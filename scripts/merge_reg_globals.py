#!/usr/bin/env python3
"""Merge Reg/global/{signatures,theories,models}.<suite>.sl into unsuffixed files.

Signatures are identical across suites → copy one.
Theories differ only in axiom lines (active vs commented) and require path →
use alpharegex version (active axioms, superset) with fixed require.
Models: union all 226 unique names with consistent ((_) X) simplification.
"""
from __future__ import annotations

import re
import shutil
from pathlib import Path

ROOT = Path("/Users/chentian/Codes/Rust/delis/benchmark/Reg")
GLOBAL = ROOT / "global"


def merge_signatures():
    src = GLOBAL / "signatures.alpharegex.sl"
    dst = GLOBAL / "signatures.sl"
    dst.write_text(src.read_text())
    print("signatures.sl: copied from alpharegex (all three identical)")


def merge_theories():
    text = (GLOBAL / "theories.alpharegex.sl").read_text()
    text = text.replace('"./signatures.alpharegex.sl"', '"./signatures.sl"')
    (GLOBAL / "theories.sl").write_text(text)
    print("theories.sl: from alpharegex (active axioms), require → signatures.sl")


def generate_model(name: str, word: str) -> str:
    n = len(word)
    univ = " ".join(f"${i}" for i in range(n))
    zero_vals = []
    one_vals = []
    for ch in word:
        if ch == '0':
            zero_vals.append(True)
            one_vals.append(False)
        elif ch == '1':
            zero_vals.append(False)
            one_vals.append(True)
        elif ch == '?':
            zero_vals.append(True)
            one_vals.append(True)
        elif ch == '_':
            zero_vals.append(False)
            one_vals.append(False)
        else:
            raise ValueError(f"unknown char {ch!r} in word {name}")

    def arms(vals):
        if len(set(vals)) == 1:
            return f"((_) {'true' if vals[0] else 'false'})"
        true_count = sum(vals)
        false_count = len(vals) - true_count
        if true_count <= false_count:
            parts = [f"((${ i}) true)" for i, v in enumerate(vals) if v]
            parts.append("((_) false)")
        else:
            parts = [f"((${ i}) false)" for i, v in enumerate(vals) if not v]
            parts.append("((_) true)")
        return " ".join(parts)

    zero_arms = arms(zero_vals)
    one_arms = arms(one_vals)
    lines = [
        f"(define-model {name}",
        f"  (interp-sort Pos ({univ}))",
        f"  (interp-fun zero (match ({zero_arms})))",
        f"  (interp-fun one (match ({one_arms}))))",
    ]
    return "\n".join(lines)


def collect_model_names() -> list[str]:
    names = set()
    for suffix in ("alpharegex", "sipser", "tomita"):
        text = (GLOBAL / f"models.{suffix}.sl").read_text()
        for m in re.finditer(r'\(define-model\s+(w[\w?]+)', text):
            names.add(m.group(1))
    return sorted(names, key=lambda n: (len(n) - 1, n))


def merge_models():
    all_names = collect_model_names()
    provide = " ".join(all_names)
    out = [f'(require "./signatures.sl")', f"(provide {provide})", ""]
    for name in all_names:
        word = name[1:]  # strip leading 'w'
        out.append(generate_model(name, word))
        out.append("")
    (GLOBAL / "models.sl").write_text("\n".join(out))
    print(f"models.sl: {len(all_names)} models (union of all three suites), simplified arms")


def update_instances():
    count = 0
    for p in sorted(ROOT.glob("[0-9]*.sl")):
        text = p.read_text()
        new = text
        for base in ("theories", "models", "signatures"):
            for suite in ("alpharegex", "sipser", "tomita"):
                new = new.replace(
                    f'"./global/{base}.{suite}.sl"',
                    f'"./global/{base}.sl"',
                )
        if new != text:
            p.write_text(new)
            count += 1
    print(f"updated {count} instance files (require paths → unsuffixed)")


def remove_suffixed():
    removed = []
    for suffix in ("alpharegex", "sipser", "tomita"):
        for base in ("signatures", "theories", "models"):
            f = GLOBAL / f"{base}.{suffix}.sl"
            if f.exists():
                f.unlink()
                removed.append(f.name)
    print(f"removed {len(removed)} suffixed files")


def main():
    merge_signatures()
    merge_theories()
    merge_models()
    update_instances()
    remove_suffixed()


if __name__ == "__main__":
    main()
