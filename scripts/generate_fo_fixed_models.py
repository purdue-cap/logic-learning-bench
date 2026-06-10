#!/usr/bin/env python3
"""Generate fixed-model FO tasks from native FOLseparators CEGIS runs.

This script is intended to run inside the PLDI 2020 FOLseparators artifact
image. For each benchmark conjecture, it invokes the artifact's public learner:

    python3.7 -u -m separators --max-depth K --timeout T input.fol

The learner prints counterexample models discovered by its own CEGIS loop as
`New model is:` blocks. This script captures those models, relabels `+` models
as `P*` and `-` models as `N*`, and freezes them into `.fol` files suitable for
the fixed-model comparison:

    python3.7 -m separators --separate --max-depth K --timeout T frozen.fol

The generation phase is not part of either learner's measured runtime.
"""
from __future__ import annotations

import argparse
import json
import os
import subprocess
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
from typing import Any


ARTIFACT_ROOT = Path("/root/folseparators")
DEFAULT_DESCRIPTIONS = ARTIFACT_ROOT / "conjectures" / "benchmark.json"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("--out-dir", required=True, type=Path)
    parser.add_argument("--descriptions", default=DEFAULT_DESCRIPTIONS, type=Path)
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--max-depth", type=int, default=2)
    parser.add_argument("--timeout", type=float, default=600.0)
    parser.add_argument("--max-clauses", type=int, default=10)
    parser.add_argument("--separator", default="hybrid")
    parser.add_argument("--logic", default="fol")
    parser.add_argument("--min-models", type=int, default=2)
    parser.add_argument("--jobs", type=int, default=min(2, os.cpu_count() or 1))
    parser.add_argument("--resume", action="store_true")
    parser.add_argument("--force", action="store_true")
    return parser.parse_args()


def clear_output_dir(path: Path) -> None:
    path.mkdir(parents=True, exist_ok=True)
    for child in path.iterdir():
        if child.is_dir():
            import shutil

            shutil.rmtree(child)
        else:
            child.unlink()


def clean_pristine_source(text: str) -> str:
    """Keep only the original signature, axioms, and conjecture."""
    cut = len(text)
    for pattern in ("\n(model ", "\n(constraint "):
        idx = text.find(pattern)
        if idx != -1:
            cut = min(cut, idx)
    return text[:cut].rstrip() + "\n"


def source_name(desc: dict[str, Any]) -> str:
    return f"{desc['base']}-{desc['conjecture']}"


def relabel_model(block: str, pos_count: int, neg_count: int) -> tuple[str, str, int, int]:
    lines = block.splitlines()
    if not lines:
        raise RuntimeError("empty model block")
    header = lines[0].strip()
    if header == "(model +":
        label = f"P{pos_count}"
        pos_count += 1
    elif header == "(model -":
        label = f"N{neg_count}"
        neg_count += 1
    else:
        raise RuntimeError(f"unexpected model header: {header}")
    lines[0] = f"(model {label}"
    return "\n".join(lines), label, pos_count, neg_count


def extract_model_blocks(stdout: str) -> list[str]:
    blocks: list[str] = []
    lines = stdout.splitlines()
    i = 0
    while i < len(lines):
        if lines[i].strip() != "New model is:":
            i += 1
            continue
        i += 1
        block: list[str] = []
        while i < len(lines):
            block.append(lines[i])
            if lines[i].strip() == ")":
                break
            i += 1
        if block:
            blocks.append("\n".join(block))
        i += 1
    return blocks


def extract_final_json(stdout: str) -> dict[str, Any]:
    for line in reversed(stdout.splitlines()):
        line = line.strip()
        if not line.startswith("{"):
            continue
        try:
            return json.loads(line)
        except json.JSONDecodeError:
            continue
    return {}


def run_native_learning(src_file: str, args: argparse.Namespace) -> tuple[str, str, int, bool]:
    cmd = [
        "python3.7",
        "-u",
        "-m",
        "separators",
        "--max-depth",
        str(args.max_depth),
        "--timeout",
        str(int(args.timeout)),
        "--max-clauses",
        str(args.max_clauses),
        "--separator",
        args.separator,
        "--logic",
        args.logic,
        src_file,
    ]
    # FOLseparators has separate counterexample and separation timers, so the
    # artifact experiment wrapper also allows roughly 2*T plus slack.
    kill_timeout = int(2 * args.timeout + 60)
    try:
        completed = subprocess.run(
            cmd,
            cwd=str(ARTIFACT_ROOT),
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            encoding="utf-8",
            timeout=kill_timeout,
        )
        return completed.stdout, completed.stderr, completed.returncode, False
    except subprocess.TimeoutExpired as exc:
        return exc.stdout or "", exc.stderr or "", -1, True


def write_generated_file(
    out_path: Path,
    pristine_source: str,
    models: list[str],
    pos_labels: list[str],
    neg_labels: list[str],
) -> None:
    constraints = " ".join(pos_labels + [f"(not {label})" for label in neg_labels])
    content = [pristine_source.rstrip(), ""]
    content.extend(model.rstrip() for model in models)
    content.append(f"(constraint {constraints})")
    out_path.write_text("\n\n".join(content) + "\n")


def main() -> None:
    args = parse_args()
    fol_dir = args.out_dir / "fol"
    log_dir = args.out_dir / "logs"
    manifest_path = args.out_dir / "manifest.jsonl"
    if args.out_dir.exists():
        if args.resume:
            pass
        elif not args.force:
            raise SystemExit(f"{args.out_dir} already exists; pass --force to replace it")
        else:
            clear_output_dir(args.out_dir)
    fol_dir.mkdir(parents=True, exist_ok=True)
    log_dir.mkdir(parents=True, exist_ok=True)

    descriptions = json.loads(args.descriptions.read_text())
    if args.limit:
        descriptions = descriptions[: args.limit]

    def process(item: tuple[int, dict[str, Any]]) -> dict[str, Any]:
        index, desc = item
        idx = f"{index:04d}"
        src_path = ARTIFACT_ROOT / desc["file"]
        pristine_source = clean_pristine_source(src_path.read_text())
        stdout_path = log_dir / f"{idx}.stdout.log"
        stderr_path = log_dir / f"{idx}.stderr.log"
        if args.resume and stdout_path.exists():
            stdout = stdout_path.read_text()
            stderr = stderr_path.read_text() if stderr_path.exists() else ""
            returncode = 0 if extract_final_json(stdout) else -1
            killed = False
        else:
            stdout, stderr, returncode, killed = run_native_learning(desc["file"], args)
            stdout_path.write_text(stdout)
            stderr_path.write_text(stderr)

        stats = extract_final_json(stdout)
        models: list[str] = []
        pos_labels: list[str] = []
        neg_labels: list[str] = []
        pos_count = 0
        neg_count = 0
        for block in extract_model_blocks(stdout):
            model, label, pos_count, neg_count = relabel_model(block, pos_count, neg_count)
            models.append(model)
            if label.startswith("P"):
                pos_labels.append(label)
            else:
                neg_labels.append(label)

        record: dict[str, Any] = {
            "artifact_file": desc["file"],
            "generated_by": "folseparators_native_cegis",
            "index": idx,
            "killed": killed,
            "logic": args.logic,
            "max_clauses": args.max_clauses,
            "max_depth": args.max_depth,
            "negative_models": len(neg_labels),
            "positive_models": len(pos_labels),
            "returncode": returncode,
            "separator": args.separator,
            "source": source_name(desc),
            "timeout": args.timeout,
        }
        if stats:
            record["native_success"] = stats.get("success")
            record["native_model_count"] = stats.get("model_count")
            record["native_formula_quantifiers"] = stats.get("formula_quantifiers")
            record["native_total_time"] = stats.get("total_time")
            record["native_error"] = stats.get("error", "")

        enough_models = len(models) >= args.min_models and pos_labels and neg_labels
        if enough_models:
            write_generated_file(fol_dir / f"{idx}.fol", pristine_source, models, pos_labels, neg_labels)
            record["status"] = "generated"
        else:
            record["status"] = "insufficient_cegis_models"
        return record

    indexed = list(enumerate(descriptions, start=1))
    with ThreadPoolExecutor(max_workers=args.jobs) as executor:
        records = list(executor.map(process, indexed))

    records.sort(key=lambda record: int(record["index"]))
    with manifest_path.open("w", encoding="utf-8") as manifest:
        for record in records:
            manifest.write(json.dumps(record, sort_keys=True) + "\n")
            print(
                f"{record['index']} {record['source']}: {record['status']} "
                f"pos={record['positive_models']} neg={record['negative_models']} "
                f"native_success={record.get('native_success')}"
            )


if __name__ == "__main__":
    main()
