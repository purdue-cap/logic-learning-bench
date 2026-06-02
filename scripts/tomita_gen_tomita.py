#!/usr/bin/env python3
"""Generate Tomita 7 regex benchmarks in alpharegex-style layout.

For each Tomita language (Tomita 1982), enumerate {0,1}^≤L, classify pos/neg
by predicate, emit one models/t{i}.sl + one top-level t{i}.sl.

Σ = {0,1}, operators inherited from theories/main.sl (re.opt, re.++, re.union,
re.*, re.allchar) — same as alpharegex.
"""
import itertools
from pathlib import Path

SUITE = Path(__file__).resolve().parent.parent  # benchmark/Reg/tomita/


# ---- Tomita 7 predicates ----

def t1(w): return all(c == "1" for c in w)                          # 1*

def t2(w):                                                          # (10)*
    return len(w) % 2 == 0 and all(w[i:i+2] == "10" for i in range(0, len(w), 2))

def t3(w):
    """T3: never odd-length 0-run immediately followed by odd-length 1-run."""
    i = 0
    while i < len(w):
        if w[i] == "0":
            j = i
            while j < len(w) and w[j] == "0":
                j += 1
            zeros = j - i
            if j < len(w) and w[j] == "1":
                k = j
                while k < len(w) and w[k] == "1":
                    k += 1
                ones = k - j
                if zeros % 2 == 1 and ones % 2 == 1:
                    return False
                i = k
            else:
                i = j
        else:
            j = i
            while j < len(w) and w[j] == "1":
                j += 1
            i = j
    return True

def t4(w): return "000" not in w                                    # no 000 substring

def t5(w): return w.count("0") % 2 == 0 and w.count("1") % 2 == 0   # both counts even

def t6(w): return (w.count("0") - w.count("1")) % 3 == 0            # #0 ≡ #1 (mod 3)

def t7(w):                                                          # 0*1*0*1*
    # accept iff string fits the pattern 0* 1* 0* 1*
    i = 0
    for blk in "0101":
        while i < len(w) and w[i] == blk:
            i += 1
    return i == len(w)


TOMITA = [
    ("no1_1star",                "1*",                                     t1, 4),
    ("no2_10star",               "(10)*",                                  t2, 5),
    ("no3_no_odd_0_then_odd_1",  "no odd 0-run followed by odd 1-run",     t3, 4),
    ("no4_no_000_substring",     "no 000 substring",                       t4, 4),
    ("no5_even_0s_and_even_1s",  "#0 even and #1 even",                    t5, 4),
    ("no6_diff_0s_1s_mod3",      "#0 ≡ #1 (mod 3)",                        t6, 5),
    ("no7_0s_1s_0s_1s",          "0*1*0*1*",                               t7, 5),
]


def enumerate_up_to(L):
    out = []
    for k in range(1, L + 1):  # skip ε
        for tup in itertools.product("01", repeat=k):
            out.append("".join(tup))
    return out


def model_name(prefix, w):
    return f"{prefix}{w}" if w else f"{prefix}eps"


def model_block(name, w):
    n = len(w)
    univ = "(" + " ".join(f"${i}" for i in range(n)) + ")"
    zero_arms = " ".join(f"(($ {i}) {str(c=='0').lower()})".replace("$ ", "$") for i, c in enumerate(w))
    one_arms  = " ".join(f"(($ {i}) {str(c=='1').lower()})".replace("$ ", "$") for i, c in enumerate(w))
    return (
        f"(define-model {name}\n"
        f"  (define-univ Pos {univ})\n"
        f"  (interp-fun zero (match ({zero_arms})))\n"
        f"  (interp-fun one (match ({one_arms}))))\n"
    )


def gen_one(tag, desc, pred, max_len):
    strs = enumerate_up_to(max_len)
    pos = sorted([w for w in strs if pred(w)], key=lambda w: (len(w), w))
    neg = sorted([w for w in strs if not pred(w)], key=lambda w: (len(w), w))
    # models file
    pos_names = [model_name("p", w) for w in pos]
    neg_names = [model_name("n", w) for w in neg]
    all_names = pos_names + neg_names
    models_path = SUITE / "models" / f"{tag}.sl"
    mlines = ['(require "../signatures/main.sl")',
              f'(provide {" ".join(all_names)})', '']
    for w, name in zip(pos + neg, all_names):
        mlines.append(model_block(name, w))
    models_path.write_text("\n".join(mlines))
    # top-level file
    top_lines = [
        f'; Tomita {tag.upper()}: {desc}',
        f'; pos={len(pos)} neg={len(neg)} (exhaustive over {{0,1}}^≤{max_len})',
        '',
        '(require "./theories/main.sl")',
        f'(require "models/{tag}.sl")',
        '',
        '(synth-fun r () RegLan)',
        '',
    ]
    for name in pos_names:
        top_lines.append(f'(constraint      (RegLan.Sem r (RegLan.Asp {name} 0 (size (Pos {name})))))')
    for name in neg_names:
        top_lines.append(f'(constraint (not (RegLan.Sem r (RegLan.Asp {name} 0 (size (Pos {name}))))))')
    top_lines.append('')
    top_lines.append('(check-synth)')
    (SUITE / f"{tag}.sl").write_text("\n".join(top_lines))
    return len(pos), len(neg)


def main():
    for tag, desc, pred, max_len in TOMITA:
        np, nn = gen_one(tag, desc, pred, max_len)
        print(f"{tag}.sl  pos={np:>2}  neg={nn:>2}  (|w|≤{max_len})")


if __name__ == "__main__":
    main()
