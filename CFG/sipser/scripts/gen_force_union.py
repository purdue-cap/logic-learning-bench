#!/usr/bin/env python3
"""Build a benchmark that GENUINELY forces a 2-nonterminal solution.

Target language: L = {a^n b^n | n>=1} ∪ {b^n a^n | n>=1}.

Why this forces multi-NT (unlike the earlier gen_force_multint.py, whose short
positives let a trivial 1-NT "list the positives" grammar win on size):

  1. INHERENTLY >=2 RECURSIVE NTs. L is the union of two distinct recursive
     families. Any single recursive nonterminal S that derives both families
     cross-contaminates: e.g. S -> aSb together with a base S -> ba yields
     a(ba)b = abab, which is NOT in L. So no 1-NT *recursive* grammar fits.

  2. EXHAUSTIVE SHORT NEGATIVES kill 1-NT recursion. We include every non-member
     up to length 5 (abab, abba, baab, baba, ...), so a 1-NT grammar cannot
     overgeneralize its way to a compact recursive solution.

  3. LONG POSITIVES make "list the positives" expensive. Positives run up to
     a^3 b^3 / b^3 a^3 (length 6). The trivial enumeration grammar costs
     ~sum(2|w|-1) ~ 49 tree nodes, whereas the recursive 2-NT grammar
       S0 -> S1 | S2 ;  S1 -> a S1 b | ab ;  S2 -> b S2 a | ba
     costs ~23 nodes. The smallest-tree-first solver therefore must pick the
     2-NT recursive grammar -- and we assert cfg.rhs.S1 appears in the result.

Outputs to ../force/.
"""
import itertools
import sys
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
SIPSER_DIR = SCRIPT_DIR.parent
ASP_GEN_DIR = SIPSER_DIR.parent / "asp4cfg" / "scripts"
sys.path.insert(0, str(ASP_GEN_DIR))
from gen import emit  # noqa: E402

AUTHOR = "Chentian Wu"
SOURCE = ("Forcing case for multi-nonterminal CFG learning: the union "
          "{a^n b^n} U {b^n a^n}; cf. Sipser (3e) Sec. 2.1 (union of CFLs) "
          "and {0^n 1^n} U {1^n 0^n}")
DESCRIPTION = "{ a^n b^n | n>=1 } U { b^n a^n | n>=1 }"

POS_MAX = 6   # positives up to a^3 b^3 / b^3 a^3
NEG_MAX = 5   # exhaustive non-members up to length 5


def member(w):
    n = len(w)
    if n == 0 or n % 2 == 1:
        return False
    h = n // 2
    return w == "a" * h + "b" * h or w == "b" * h + "a" * h


def enumerate_up_to(alphabet, n):
    out = []
    for L in range(1, n + 1):
        for tup in itertools.product(alphabet, repeat=L):
            out.append("".join(tup))
    return out


def main():
    alphabet = "ab"
    pos = sorted([w for w in enumerate_up_to(alphabet, POS_MAX) if member(w)],
                 key=lambda w: (len(w), w))
    neg = sorted([w for w in enumerate_up_to(alphabet, NEG_MAX) if not member(w)],
                 key=lambda w: (len(w), w))

    out_dir = SIPSER_DIR / "force"
    out_dir.mkdir(parents=True, exist_ok=True)

    # k=2 is the intended (forcing) encoding; emit k=1 too for comparison.
    for k in (1, 2):
        text = emit(
            k, pos, neg, ["a", "b"],
            source=f"force-multint-union k={k}: {DESCRIPTION}, pos<=^{POS_MAX} neg<=^{NEG_MAX}",
            author=AUTHOR,
            info_source=SOURCE,
            description=DESCRIPTION,
        )
        path = out_dir / f"anbn_union_bnan_k{k}.sl"
        path.write_text(text)
        print(f"{path.relative_to(SIPSER_DIR)}  pos={len(pos)} neg={len(neg)} k={k}")

    print(f"\npositives: {pos}")
    print(f"negatives (first 12): {neg[:12]}")


if __name__ == "__main__":
    main()
