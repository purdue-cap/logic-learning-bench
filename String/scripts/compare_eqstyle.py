#!/usr/bin/env python3
"""Compare the lenchar encoding against the eq-style encoding on selected cases.

The numbered String/NNNN.sl files ARE the eq-style encoding now; lenchar
files are regenerated on demand into scripts/.lenchar-cache/ for comparison.
"""

import argparse
import csv
import re
import subprocess
import time
from pathlib import Path


STRING_ROOT = Path(__file__).resolve().parents[1]
REPO_ROOT = STRING_ROOT.parents[1]
DELIS = REPO_ROOT / "target" / "release" / "delis"


def run_cmd(cmd: list[str], timeout: float) -> tuple[str, float, str]:
    start = time.perf_counter()
    try:
        proc = subprocess.run(
            cmd,
            cwd=REPO_ROOT,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            timeout=timeout,
        )
        elapsed = time.perf_counter() - start
        status = "ok" if proc.returncode == 0 else f"exit{proc.returncode}"
        return status, elapsed, proc.stdout
    except subprocess.TimeoutExpired as exc:
        elapsed = time.perf_counter() - start
        output = exc.stdout or ""
        if isinstance(output, bytes):
            output = output.decode(errors="replace")
        return "timeout", elapsed, output


def stats_for(path: Path, timeout: float) -> dict[str, str]:
    status, elapsed, output = run_cmd([str(DELIS), "--sygus-stats", str(path)], timeout)
    row = {
        "stats_status": status,
        "stats_wall_s": f"{elapsed:.3f}",
        "sygus_ms": "",
        "sygus_bytes": "",
        "sygus_lines": "",
    }
    for line in output.splitlines():
        if line.startswith("SYGUS_STATS\t"):
            _, ms, bytes_, lines = line.split("\t")
            row.update({"sygus_ms": ms, "sygus_bytes": bytes_, "sygus_lines": lines})
            break
    return row


def solve_for(path: Path, timeout: float, vv: bool) -> dict[str, str]:
    cmd = [str(DELIS)]
    if vv:
        cmd.append("-vv")
    cmd.append(str(path))
    status, elapsed, output = run_cmd(cmd, timeout)
    solved = False
    first_solution_line = ""
    for line in output.splitlines():
        stripped = line.strip()
        if stripped.startswith("(define-fun"):
            solved = True
            first_solution_line = stripped
            break
    sizes = [int(m.group(1)) for m in re.finditer(r"debug: size=(\d+):", output)]
    return {
        "solve_status": "solved" if solved else status,
        "solve_wall_s": f"{elapsed:.3f}",
        "max_search_size": str(max(sizes)) if sizes else "",
        "solution": first_solution_line,
    }


def lenchar_cached(case_id: str) -> Path:
    """Generate the lenchar encoding for `case_id` on demand (cached)."""
    cache = STRING_ROOT / "scripts" / ".lenchar-cache"
    cache.mkdir(exist_ok=True)
    out = cache / f"{case_id}.sl"
    if not out.exists():
        subprocess.run(
            [
                "python3",
                str(STRING_ROOT / "scripts" / "gen_lenchar.py"),
                "--input",
                str(STRING_ROOT / "sygus" / f"{case_id}.sl"),
                "--output",
                str(out),
            ],
            check=True,
        )
    return out


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("ids", nargs="*", default=["0020", "0021", "0022", "0031", "0036"])
    parser.add_argument("--timeout", type=float, default=30.0)
    parser.add_argument("--out", type=Path, default=STRING_ROOT / "results" / "compare.tsv")
    parser.add_argument("--vv", action="store_true", help="run solving with -vv and record max exact-search size")
    args = parser.parse_args()

    rows: list[dict[str, str]] = []
    for case_id in args.ids:
        lenchar_path = lenchar_cached(case_id)
        for encoding, path in [("lenchar", lenchar_path), ("eq-style", STRING_ROOT / f"{case_id}.sl")]:
            row = {"case": case_id, "encoding": encoding, "path": str(path)}
            row.update(stats_for(path, args.timeout))
            row.update(solve_for(path, args.timeout, args.vv))
            rows.append(row)
            print(
                f"{case_id} {encoding}: stats={row['sygus_ms']}ms/{row['sygus_bytes']}B "
                f"solve={row['solve_status']} {row['solve_wall_s']}s max_size={row['max_search_size']}"
            )

    args.out.parent.mkdir(parents=True, exist_ok=True)
    with args.out.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0].keys()), delimiter="\t")
        writer.writeheader()
        writer.writerows(rows)
    print(f"wrote {args.out}")


if __name__ == "__main__":
    main()
