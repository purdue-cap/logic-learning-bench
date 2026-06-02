#!/usr/bin/env python3
"""Rebuild all 25 alpharegex per-case .sl files directly from the kupl source.

Each upstream file has format:
    <natural-language description on first line(s)>
    ++
    <positive strings, one per line, may contain X for any-char>
    --
    <negative strings>

Output: benchmark/Reg/alpharegex/0001.sl .. 0025.sl with proper set-info,
constraints, and require paths. Numbering matches kupl no1..no25.
"""
import re
from pathlib import Path

UPSTREAM = Path("/Users/chentian/Codes/OCaml/AlphaRegexPublic/benchmarks")
OUT_DIR = Path("/Users/chentian/Codes/Rust/delis/benchmark/Reg/alpharegex")


def parse_upstream(path):
    """Returns (description, pos_strings, neg_strings)."""
    desc_lines, pos, neg = [], [], []
    mode = "desc"
    for ln in path.read_text().splitlines():
        s = ln.strip()
        if s == "++":
            mode = "pos"
            continue
        if s == "--":
            mode = "neg"
            continue
        if not s:
            continue
        if mode == "desc":
            desc_lines.append(s)
        elif mode == "pos":
            pos.append(s)
        else:
            neg.append(s)
    return " ".join(desc_lines), pos, neg


def model_name(string):
    return f"w{string}"


def emit_case(case_idx, upstream_stem, desc, pos, neg):
    out = []
    out.append('(set-info :author "Chentian Wu")')
    out.append(f'(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — {upstream_stem}")')
    safe_desc = desc.replace('"', "'")
    out.append(f'(set-info :description "{safe_desc}")')
    out.append('')
    out.append('(require "./global/theories.sl")')
    out.append('(require "./global/models.sl")')
    out.append('')
    out.append('(synth-fun r () RegLan)')
    out.append('')
    for s in pos:
        n = model_name(s)
        out.append(f'(constraint      (RegLan.Sem r (RegLan.Asp {n} 0 (size (Pos {n})))))')
    for s in neg:
        n = model_name(s)
        out.append(f'(constraint (not (RegLan.Sem r (RegLan.Asp {n} 0 (size (Pos {n}))))))')
    out.append('')
    out.append('(check-synth)')
    path = OUT_DIR / f"{case_idx:04d}.sl"
    path.write_text("\n".join(out) + "\n")


def main():
    # collect upstream files sorted by their no-number
    sources = []
    for p in UPSTREAM.iterdir():
        m = re.match(r"no(\d+)_", p.name)
        if m:
            sources.append((int(m.group(1)), p))
    sources.sort()
    assert len(sources) == 25, f"expected 25, got {len(sources)}"
    for idx, (no, src) in enumerate(sources, start=1):
        desc, pos, neg = parse_upstream(src)
        emit_case(idx, src.name, desc, pos, neg)
        print(f"  0{idx:03d}.sl  ← {src.name}  ({len(pos)} pos, {len(neg)} neg)")


if __name__ == "__main__":
    main()
