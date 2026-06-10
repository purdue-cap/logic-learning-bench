#!/usr/bin/env python3
"""Rebuild the FO depth-2/FO2 benchmark suite.

The installed suite mirrors the CTL layout: root Delis instances plus direct
support directories (`theories/` and `fol/`). Models are embedded in the root
instances, and signatures are embedded in their matching theories.
"""
from __future__ import annotations

import argparse
import importlib.util
import json
import os
import shutil
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent / "FO"
SCRIPTS = Path(__file__).resolve().parent
DEFAULT_WORK_DIR = Path(os.environ.get("DELIS_FO_REBUILD_WORK_DIR", "/private/tmp/delis-fo-generated-k2"))
VERTICAL_EXTENSION = SCRIPTS / "fo_vertical_paxos" / "fol"


def load_fol2sl():
    path = SCRIPTS / "fol2sl.py"
    spec = importlib.util.spec_from_file_location("fol2sl", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"failed to load {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def run(cmd: list[str], cwd: Path | None = None) -> None:
    print("+", " ".join(cmd), flush=True)
    subprocess.run(cmd, cwd=cwd, check=True)


def generate_work_corpus(args: argparse.Namespace, work_dir: Path) -> None:
    generator = SCRIPTS / "generate_fo_fixed_models.py"
    cmd = [
        "docker",
        "run",
        "--rm",
        "--platform",
        "linux/amd64",
        "-v",
        f"{work_dir}:/out",
        "-v",
        f"{generator}:/generate.py:ro",
        args.image,
        "/bin/bash",
        "-lc",
        (
            "PYTHONPATH=/root/folseparators python3.7 /generate.py "
            f"--out-dir /out --max-depth {args.max_depth} "
            f"--timeout {args.timeout} --max-clauses {args.max_clauses} "
            f"--separator {args.separator} --logic {args.logic} "
            f"--min-models {args.min_models} --limit {args.limit} "
            f"--jobs {args.jobs} "
            f"{'--resume' if args.resume else '--force'}"
        ),
    ]
    run(cmd)


def add_vertical_extension(work_dir: Path) -> None:
    src_dir = VERTICAL_EXTENSION
    if not src_dir.exists():
        raise RuntimeError(f"missing vertical Paxos extension directory: {src_dir}")
    dst_dir = work_dir / "fol"
    dst_dir.mkdir(parents=True, exist_ok=True)
    for n in range(307, 321):
        name = f"{n:04d}.fol"
        shutil.copy2(src_dir / name, dst_dir / name)


def count_models(text: str) -> tuple[int, int]:
    pos = neg = 0
    for line in text.splitlines():
        if line.startswith("(model P"):
            pos += 1
        elif line.startswith("(model N"):
            neg += 1
    return pos, neg


def update_work_manifest(fol2sl, work_dir: Path) -> None:
    manifest = work_dir / "manifest.jsonl"
    rows = []
    if manifest.exists():
        for line in manifest.read_text().splitlines():
            if not line.strip():
                continue
            row = json.loads(line)
            idx = int(row.get("index", "0"))
            if not (307 <= idx <= 320):
                rows.append(row)
    for n in range(307, 321):
        idx = f"{n:04d}"
        path = work_dir / "fol" / f"{idx}.fol"
        text = path.read_text()
        file_name, conjecture = fol2sl.fol_key(path)
        pos, neg = count_models(text)
        rows.append(
            {
                "artifact_file": None,
                "bounds": None,
                "index": idx,
                "negative_models": neg,
                "positive_models": pos,
                "source": f"vertical_paxos_epr_unverified_optimization-{conjecture}",
                "source_file": file_name,
                "status": "copied_old_vertical_paxos",
            }
        )
    rows.sort(key=lambda row: int(row["index"]))
    manifest.write_text("\n".join(json.dumps(row, sort_keys=True) for row in rows) + "\n")


def work_manifest_by_index(work_dir: Path) -> dict[str, dict]:
    path = work_dir / "manifest.jsonl"
    if not path.exists():
        return {}
    rows = {}
    for line in path.read_text().splitlines():
        if line.strip():
            row = json.loads(line)
            rows[row["index"]] = row
    return rows


def all_ids(work_dir: Path) -> list[str]:
    return [fol.stem for fol in sorted((work_dir / "fol").glob("*.fol"))]


def convert_supported(fol2sl, work_dir: Path, ids: list[str]) -> None:
    fol2sl.convert(work_dir, "FO2", True, set(ids))


def replace_dir(path: Path) -> None:
    if path.exists():
        shutil.rmtree(path)
    path.mkdir(parents=True, exist_ok=True)


def strip_provide(text: str) -> str:
    return "\n".join(line for line in text.splitlines() if not line.startswith("(provide ")).strip()


def inline_signature(theory_text: str, signature_text: str) -> str:
    signature_body = strip_provide(signature_text)
    theory_lines = [
        line for line in theory_text.splitlines()
        if not line.startswith('(require "../../global/signatures/')
        and not line.startswith('(require "../signatures/')
    ]
    if not theory_lines or not theory_lines[0].startswith("(provide "):
        raise RuntimeError("unexpected generated theory shape")
    body = "\n".join(theory_lines[1:]).lstrip()
    return f"{theory_lines[0]}\n\n{signature_body}\n\n{body}\n"


def install_dense(work_dir: Path, ids: list[str]) -> None:
    mapping = work_manifest_by_index(work_dir)

    replace_dir(ROOT / "fol")
    replace_dir(ROOT / "theories")
    if (ROOT / "models").exists():
        shutil.rmtree(ROOT / "models")
    if (ROOT / "signatures").exists():
        shutil.rmtree(ROOT / "signatures")

    for stale in ROOT.glob("[0-9][0-9][0-9][0-9].sl"):
        stale.unlink()

    # Remove stale level directories to avoid accidentally running old suites.
    for old_level in ["FO0", "FO1", "FO2", "FO3"]:
        path = ROOT / old_level
        if path.exists():
            shutil.rmtree(path)
    if (ROOT / "global").exists():
        shutil.rmtree(ROOT / "global")
    if (ROOT / "raw").exists():
        shutil.rmtree(ROOT / "raw")

    for src in sorted((work_dir / "FO2" / "theories").glob("*.sl")):
        signature = work_dir / "global" / "signatures" / src.name
        if not signature.exists():
            raise RuntimeError(f"missing signature for theory {src.name}")
        text = inline_signature(src.read_text(), signature.read_text())
        (ROOT / "theories" / src.name).write_text(text)

    installed_rows = []
    for new_n, old_id in enumerate(ids, start=1):
        new_id = f"{new_n:04d}"
        shutil.copy2(work_dir / "fol" / f"{old_id}.fol", ROOT / "fol" / f"{new_id}.fol")
        text = (work_dir / "FO2" / f"{old_id}.sl").read_text()
        text = "\n".join(
            line for line in text.splitlines()
            if line != f'(require "../global/models/{old_id}.sl")'
        )
        model_text = (work_dir / "global" / "models" / f"{old_id}.sl").read_text()
        model_lines = [
            line for line in model_text.splitlines()
            if not line.startswith("(require ") and not line.startswith("(provide ")
        ]
        text = text.replace("(synth-fun phi () FO0)", "\n".join(model_lines).strip() + "\n\n(synth-fun phi () FO0)")
        (ROOT / f"{new_id}.sl").write_text(text)

        row = dict(mapping.get(old_id, {}))
        row["installed_index"] = new_id
        row["generated_index"] = old_id
        installed_rows.append(row)

    (ROOT / "manifest.jsonl").write_text(
        "\n".join(json.dumps(row, sort_keys=True) for row in installed_rows) + "\n"
    )
    print(f"installed {len(ids)} FO2 instances from depth-2 FOLseparators provenance into {ROOT}")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--image", default="560:latest")
    parser.add_argument("--max-depth", type=int, default=2)
    parser.add_argument("--timeout", type=int, default=600)
    parser.add_argument("--max-clauses", type=int, default=10)
    parser.add_argument("--separator", default="hybrid")
    parser.add_argument("--logic", default="fol")
    parser.add_argument("--min-models", type=int, default=2)
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--jobs", type=int, default=2)
    parser.add_argument("--resume", action="store_true")
    parser.add_argument("--work-dir", type=Path, default=DEFAULT_WORK_DIR)
    parser.add_argument("--skip-generate", action="store_true")
    parser.add_argument("--no-install", action="store_true")
    parser.add_argument("--include-vertical-extension", action="store_true")
    args = parser.parse_args()

    fol2sl = load_fol2sl()
    if not args.skip_generate:
        generate_work_corpus(args, args.work_dir)
    if args.include_vertical_extension:
        add_vertical_extension(args.work_dir)
        update_work_manifest(fol2sl, args.work_dir)
    ids = all_ids(args.work_dir)
    convert_supported(fol2sl, args.work_dir, ids)
    if not args.no_install:
        install_dense(args.work_dir, ids)


if __name__ == "__main__":
    main()
