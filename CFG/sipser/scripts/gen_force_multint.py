#!/usr/bin/env python3
"""Build a tiny benchmark where 1-NT solutions are provably excluded.

Target language: {a, b} ∪ {a^n b^n | n >= 1}.
Sample: exhaustive enumeration to length 5.
- Positives: a, b, ab, aabb, aaabbb (plus a, b at length 1)
- Negatives: everything else up to length 5.

1-NT analysis: any single-NT CFG that includes "a" and "b" as productions
(needed for the length-1 positives, since no recursion creates length-1
strings in Delis encoding) will also generate "aab", "aba", "abb" etc.
via aSb with S=a/b — but those are negatives.

A 1-NT enumeration grammar S → a | b | ab | aabb | aaabbb (5 productions)
is the only way 1-NT can satisfy this sample. The recursive 2-NT solution
S → T | a | b; T → aTb | ab uses 4 productions, which is smaller in Delis
bit budget.
"""
import itertools
import sys
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
SIPSER_DIR = SCRIPT_DIR.parent
ASP_GEN_DIR = SIPSER_DIR.parent / "asp4cfg" / "scripts"
sys.path.insert(0, str(ASP_GEN_DIR))
from gen import emit


def is_anbn_or_letter(w):
    if w in ("a", "b"):
        return True
    # check a^n b^n with n >= 1
    if not w or w[0] != "a":
        return False
    i = 0
    while i < len(w) and w[i] == "a":
        i += 1
    na = i
    while i < len(w) and w[i] == "b":
        i += 1
    return i == len(w) and na == len(w) - na and na >= 1


def main():
    alphabet = "ab"
    max_len = 5
    strs = []
    for L in range(1, max_len + 1):
        for tup in itertools.product(alphabet, repeat=L):
            strs.append("".join(tup))
    pos = sorted([w for w in strs if is_anbn_or_letter(w)], key=lambda w: (len(w), w))
    neg = sorted([w for w in strs if not is_anbn_or_letter(w)], key=lambda w: (len(w), w))
    for k in [1, 2]:
        text = emit(k, pos, neg, ["a", "b"], source=f"force-multint k={k}: anbn ∪ {{a,b}}, exhaustive ≤5")
        out_dir = SIPSER_DIR / "force"
        out_dir.mkdir(parents=True, exist_ok=True)
        path = out_dir / f"anbn_plus_letters_k{k}.sl"
        path.write_text(text)
        print(f"{path.relative_to(SIPSER_DIR)}  pos={len(pos)} neg={len(neg)} k={k}")
    print(f"\npositives: {pos}")
    print(f"negatives (first 12): {neg[:12]}")


if __name__ == "__main__":
    main()
