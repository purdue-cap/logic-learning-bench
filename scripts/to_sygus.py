#!/usr/bin/env python3
"""Translate a Reg/<dataset> directory of delis-native instances into SyGuS-BV
files under <dataset>/sygus/.

Assumes the alphabet is {0,1} and word names directly encode the bit string
(e.g. w0010). Wildcards (`_`, `?`) are not supported here — alpharegex/sygus
was produced separately.

The synth grammar mirrors delis's RegLan theory (see global/theories.sl):
`str.to_re "0" | str.to_re "1" | re.allchar | re.opt | re.++ | re.union | re.*`.
"""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

CONSTRAINT_RE = re.compile(
    r"\(constraint\s+(?P<neg>\(not\s+)?"
    r"\(RegLan\.Sem\s+r\s+\(RegLan\.Asp\s+w(?P<bits>[01]+)\s+0\s+\(size\s+\(Pos\s+w(?P=bits)\)\)\)\)"
    r"\s*\)?\s*\)"
)


def convert(src: Path) -> str:
    text = src.read_text()
    words: list[tuple[str, bool]] = []  # (bits, positive)
    seen: dict[str, int] = {}
    for m in CONSTRAINT_RE.finditer(text):
        negated = m.group("neg") is not None
        bits = m.group("bits")
        if bits not in seen:
            seen[bits] = len(words) + 1
            words.append((bits, not negated))
        else:
            # same word reused with possibly different polarity — keep order of first appearance
            idx = seen[bits]
            words[idx - 1] = (bits, words[idx - 1][1] and not negated)

    # Re-extract constraints in original order with renumbered names.
    out: list[str] = ["(set-logic SLIA)", ""]
    out.append(f"; Converted from {src.as_posix()} (delis semantic format).")
    out.append("; Alphabet is {0,1}; no wildcards in source.")
    out.append("; Grammar mirrors delis RegLan theory, including re.allchar.")
    out.append("")
    for bits, _ in words:
        out.append(f'(define-fun w{seen[bits]} () String')
        out.append(f'    "{bits}"')
        out.append(")")
    out.append("")
    out.append("(synth-fun r () RegLan")
    out.append("    ((Start RegLan))")
    out.append("    (")
    out.append("        (Start RegLan")
    out.append("            (")
    out.append('                (str.to_re "0")')
    out.append('                (str.to_re "1")')
    out.append("                re.allchar")
    out.append("                (re.opt Start)")
    out.append("                (re.++ Start Start)")
    out.append("                (re.union Start Start)")
    out.append("                (re.* Start)")
    out.append("            )")
    out.append("        )")
    out.append("    )")
    out.append(")")
    out.append("")
    for m in CONSTRAINT_RE.finditer(text):
        negated = m.group("neg") is not None
        idx = seen[m.group("bits")]
        if negated:
            out.append(f"(constraint (not (str.in_re w{idx} r)))")
        else:
            out.append(f"(constraint (str.in_re w{idx} r))")
    out.append("")
    out.append("(check-synth)")
    return "\n".join(out) + "\n"


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("dataset", type=Path, help="e.g. benchmark/Reg/sipser")
    args = ap.parse_args()

    src_dir: Path = args.dataset
    out_dir = src_dir / "sygus"
    out_dir.mkdir(exist_ok=True)

    instances = sorted(p for p in src_dir.glob("*.sl") if p.parent == src_dir)
    if not instances:
        print(f"no .sl files at {src_dir}", file=sys.stderr)
        return 1

    for src in instances:
        dst = out_dir / src.name
        dst.write_text(convert(src))
        print(f"{src} -> {dst}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
