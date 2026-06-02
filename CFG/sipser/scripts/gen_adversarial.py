#!/usr/bin/env python3
"""Build adversarial benchmarks where 1-NT solutions are excluded by negatives.

Picks one language whose natural CFG is multi-NT, then enumerates ALL strings
up to length L over the alphabet — positives are language members, negatives
are non-members. With exhaustive negatives, the synthesizer can't get away
with a 1-NT "cheat" that overgeneralizes.

Outputs to ../adversarial/.
"""
import itertools
import sys
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
SIPSER_DIR = SCRIPT_DIR.parent
ASP_GEN_DIR = SIPSER_DIR.parent / "asp4cfg" / "scripts"
sys.path.insert(0, str(ASP_GEN_DIR))
from gen import emit  # noqa: E402
from gen_sipser import (
    p_anbn_or_anb2n,     # Sipser Ex 2.55:   {a^n b^n} ∪ {a^n b^(2n)}
    p_anbn_or_bnan,      # 3-NT classic:     {a^n b^n} ∪ {b^n a^n}
    p_anbn_plus,         # (a^n b^n)+
)


def enumerate_up_to(alphabet, n):
    out = []
    for L in range(1, n + 1):
        for tup in itertools.product(alphabet, repeat=L):
            out.append("".join(tup))
    return out


def gen_adversarial(k, name, alphabet, pred, max_len):
    strs = enumerate_up_to(alphabet, max_len)
    pos = sorted([w for w in strs if pred(w)], key=lambda w: (len(w), w))
    neg = sorted([w for w in strs if not pred(w)], key=lambda w: (len(w), w))
    alph = sorted(set(alphabet))
    text = emit(k, pos, neg, alph, source=f"adversarial: {name} (exhaustive |w|<={max_len})")
    out_dir = SIPSER_DIR / "adversarial"
    out_dir.mkdir(parents=True, exist_ok=True)
    out_path = out_dir / f"{name}.sl"
    out_path.write_text(text)
    return out_path, len(pos), len(neg)


def main():
    cases = [
        # (k, name, alpha, pred, max_len)
        (3, "anbn_or_anb2n_exh5", "ab", p_anbn_or_anb2n, 5),
        (3, "anbn_or_anb2n_exh6", "ab", p_anbn_or_anb2n, 6),
        (3, "anbn_or_bnan_exh5",  "ab", p_anbn_or_bnan,  5),
        (2, "anbn_plus_exh5",     "ab", p_anbn_plus,     5),
    ]
    for k, name, alpha, pred, max_len in cases:
        p, np_, nn = gen_adversarial(k, name, alpha, pred, max_len)
        print(f"adversarial/{name}.sl  pos={np_:>3}  neg={nn:>3}  k={k}  |w|<={max_len}")


if __name__ == "__main__":
    main()
