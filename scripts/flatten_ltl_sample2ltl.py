#!/usr/bin/env python3
"""Flatten samples2LTL traces into benchmark/LTL/sample2LTL/.

Reads .trace files from the samples2LTL repository, converts each trace to a
delis .sl instance with inline lasso models, and writes numbered output files.
"""
from __future__ import annotations

import shutil
import sys
from pathlib import Path

SAMPLES2LTL = Path("/Users/chentian/Codes/Python/samples2LTL")
TRACES_DIR = SAMPLES2LTL / "traces" / "generated"
OUT_DIR = Path("/Users/chentian/Codes/Rust/delis/benchmark/LTL/sample2LTL")

DIRS = [
    "5to10Traces",
    "baseTest",
    "disjunctedExistence",
    "equal",
    "freshTests",
    "increasingNumVariables",
    "moreDetailedTest",
    "temp",
    "tooBigToHandle",
]


# ---- trace parsing ----

def parse_trace_file(path: Path) -> dict:
    lines = path.read_text().strip().split("\n")
    sections: list[list[str]] = []
    current: list[str] = []
    for line in lines:
        if line.strip() == "---":
            sections.append(current)
            current = []
        else:
            current.append(line.strip())
    sections.append(current)

    pos_traces = sections[0]
    neg_traces = sections[1]
    operators = sections[2][0] if len(sections) > 2 and sections[2] else ""
    depth = sections[3][0] if len(sections) > 3 and sections[3] else ""
    expected = sections[4][0] if len(sections) > 4 and sections[4] else ""

    return {
        "pos": pos_traces,
        "neg": neg_traces,
        "operators": operators,
        "depth": depth,
        "expected": expected,
    }


def parse_lasso(trace_str: str) -> tuple[list[list[int]], int]:
    """Parse '1,0;0,1;1,1::2' → (timesteps, loop_point)."""
    if "::" in trace_str:
        body, loop = trace_str.rsplit("::", 1)
        loop_point = int(loop)
    else:
        body = trace_str
        loop_point = 0

    timesteps = []
    for step in body.split(";"):
        timesteps.append([int(v) for v in step.split(",")])
    return timesteps, loop_point


# ---- lasso → model encoding ----

def compute_next(n: int, loop: int) -> dict[int, int]:
    nxt = {}
    for i in range(n - 1):
        nxt[i] = i + 1
    nxt[n - 1] = loop
    return nxt


def compute_future(n: int, nxt: dict[int, int]) -> set[tuple[int, int]]:
    result = set()
    for start in range(n):
        visited = set()
        cur = start
        while cur not in visited:
            visited.add(cur)
            result.add((start, cur))
            cur = nxt[cur]
        if cur in visited:
            loop_start = cur
            c = loop_start
            while True:
                result.add((start, c))
                c = nxt[c]
                if c == loop_start:
                    break
    return result


def compute_prefix(n: int, nxt: dict[int, int], future: set[tuple[int, int]]) -> set[tuple[int, int, int]]:
    """prefix(a,b,c) = c is on path a→...→b, including a, excluding b."""
    result = set()
    for a in range(n):
        for b in range(n):
            if not (a, b) in future:
                continue
            if a == b:
                continue
            path = []
            cur = a
            while cur != b:
                path.append(cur)
                cur = nxt[cur]
                if len(path) > n:
                    break
            for c in path:
                result.add((a, b, c))
    return result


def model_to_sl(name: str, timesteps: list[list[int]], loop: int, nvars: int) -> str:
    n = len(timesteps)
    nxt = compute_next(n, loop)
    future = compute_future(n, nxt)
    prefix = compute_prefix(n, nxt, future)

    lines = []
    elems = " ".join(f"${i}" for i in range(n))
    lines.append(f"(define-model {name}")
    lines.append(f"  (interp-sort Pos ({elems}))")
    lines.append("  (interp-fun start ($0))")

    for v in range(nvars):
        true_pos = [i for i in range(n) if timesteps[i][v] == 1]
        if len(true_pos) == 0:
            lines.append(f"  (interp-fun p{v} (match (")
            lines.append("    ((_) false)")
            lines.append("  )))")
        elif len(true_pos) == n:
            lines.append(f"  (interp-fun p{v} (match (")
            lines.append("    ((_) true)")
            lines.append("  )))")
        else:
            lines.append(f"  (interp-fun p{v} (match (")
            for i in true_pos:
                lines.append(f"    ((${i}) true)")
            lines.append("    ((_) false)")
            lines.append("  )))")

    lines.append("  (interp-fun next (match (")
    for i in range(n):
        lines.append(f"    ((${i}) ${nxt[i]})")
    lines.append("  )))")

    future_sorted = sorted(future)
    lines.append("  (interp-fun future (match (")
    for a, b in future_sorted:
        lines.append(f"    ((${a} ${b}) true)")
    lines.append("    ((_ _) false)")
    lines.append("  )))")

    prefix_sorted = sorted(prefix)
    lines.append("  (interp-fun prefix (match (")
    for a, b, c in prefix_sorted:
        lines.append(f"    ((${a} ${b} ${c}) true)")
    lines.append("    ((_ _ _) false)")
    lines.append("  )))")

    lines.append(")")
    return "\n".join(lines)


# ---- .sl file generation ----

def generate_sl(trace_data: dict, source_label: str) -> str:
    pos_traces = trace_data["pos"]
    neg_traces = trace_data["neg"]
    operators = trace_data["operators"]
    depth = trace_data["depth"]
    expected = trace_data["expected"]

    first_ts, _ = parse_lasso(pos_traces[0])
    nvars = len(first_ts[0])

    parts = []
    parts.append(f'(require "theories/ltl-lasso-{nvars}.sl")')
    parts.append('(set-info :author "Chentian Wu")')
    parts.append(f'(set-info :source "{source_label}")')
    parts.append(f";; operators: {operators}")
    parts.append(f";; depth: {depth}")
    parts.append(f";; expected: {expected}")
    parts.append("")

    for i, trace_str in enumerate(pos_traces):
        timesteps, loop = parse_lasso(trace_str)
        parts.append(model_to_sl(f"P{i}", timesteps, loop, nvars))
        parts.append("")

    for i, trace_str in enumerate(neg_traces):
        timesteps, loop = parse_lasso(trace_str)
        parts.append(model_to_sl(f"N{i}", timesteps, loop, nvars))
        parts.append("")

    parts.append("(synth-fun phi () LTL)")
    parts.append("")

    for i in range(len(pos_traces)):
        parts.append(f"(constraint (LTL.Sem phi (LTL.Asp P{i} start)))")
    for i in range(len(neg_traces)):
        parts.append(f"(constraint (not (LTL.Sem phi (LTL.Asp N{i} start))))")
    parts.append("")
    parts.append("(check-synth)")

    return "\n".join(parts) + "\n"


# ---- main ----

def collect_traces() -> list[tuple[str, Path]]:
    """Collect all trace files, sorted by dir name then file number."""
    result = []
    for d in DIRS:
        dir_path = TRACES_DIR / d
        if not dir_path.exists():
            print(f"  skip {d}: directory not found")
            continue
        traces = sorted(dir_path.glob("*.trace"))
        for t in traces:
            result.append((d, t))
    return result


def main():
    txt_dir = OUT_DIR / "txt"
    txt_dir.mkdir(parents=True, exist_ok=True)

    # Clean old .sl files
    old_sl = list(OUT_DIR.glob("[0-9][0-9][0-9][0-9].sl"))
    if old_sl:
        print(f"Removing {len(old_sl)} old .sl files")
        for f in old_sl:
            f.unlink()

    old_txt = list(txt_dir.glob("*.trace"))
    if old_txt:
        print(f"Removing {len(old_txt)} old .trace files")
        for f in old_txt:
            f.unlink()

    traces = collect_traces()
    print(f"Collected {len(traces)} trace files")

    for idx, (dirname, trace_path) in enumerate(traces, start=1):
        num = f"{idx:04d}"
        orig_num = trace_path.stem
        source_label = f"samples2LTL — {dirname}/{orig_num}"

        shutil.copy2(trace_path, txt_dir / f"{num}.trace")

        trace_data = parse_trace_file(trace_path)
        sl_content = generate_sl(trace_data, source_label)
        (OUT_DIR / f"{num}.sl").write_text(sl_content)

    print(f"Generated {len(traces)} instances (0001–{len(traces):04d})")


if __name__ == "__main__":
    main()
