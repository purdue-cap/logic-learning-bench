#!/usr/bin/env python3
"""Generate Sipser Ch.1 regex benchmarks in alpharegex-style layout.

Σ = {0,1}, operators inherited from theories/main.sl.

25 cases drawn from Sipser Ch.1: Example 1.53, Exercise 1.6, Exercise 1.4
(mapping a→0, b→1), Exercise 1.13, Exercise 1.12. Chosen to be non-repetitive
vs the alpharegex 25-case suite (which already covers begin_1_end_0,
substring_0101, third-symbol-is-0, len_is_3_mul, odd_pos_is_1, except_0_and_1).
"""
import itertools
from pathlib import Path

SUITE = Path(__file__).resolve().parent.parent


# ---- predicates ----

def contains_substr(w, s): return s in w

# Pattern / position (Exercise 1.6, sub-parts a-j) — drop b's overlap with alpharegex
def p_three_1s(w):    return w.count("1") >= 3
def p_start0_odd_or_start1_even(w):
    if not w: return False
    if w[0] == "0": return len(w) % 2 == 1
    else:           return len(w) % 2 == 0
def p_no_110(w):      return "110" not in w and len(w) >= 1
def p_len_at_most_5(w): return 1 <= len(w) <= 5
def p_except_11_111(w): return len(w) >= 1 and w not in ("11", "111")
def p_two_0s_at_most_one_1(w):
    return w.count("0") >= 2 and w.count("1") <= 1

# Counting (Example 1.53)
def p_single_1(w):          return w.count("1") == 1
def p_at_least_one_1(w):    return "1" in w
def p_contains_001(w):      return "001" in w
def p_even_length(w):       return len(w) >= 2 and len(w) % 2 == 0
def p_exactly_01_or_10(w):  return w in ("01", "10")

# Boolean structure (Example 1.53)
def p_start_end_same(w):    return len(w) >= 1 and w[0] == w[-1]
def p_opt0_then_1s(w):
    # (0 ∪ ε) 1* — matches: "", "0", "1", "11", "01", "011", ...
    if not w: return False  # skip ε
    if w[0] == "0":
        return all(c == "1" for c in w[1:])
    else:
        return all(c == "1" for c in w)
def p_even0_or_two1(w):
    return (w.count("0") % 2 == 0 and len(w) >= 1) or w.count("1") == 2
def p_no_two_1s_odd_apart(w):
    # Sipser 1.13: no pair of 1s separated by an odd number of symbols
    # "separated by k symbols" means k chars between them, so positions (i,j) → j-i-1
    # want (j-i-1) even for all 1-pairs, i.e., (j-i) odd
    ones = [i for i, c in enumerate(w) if c == "1"]
    for a in range(len(ones)):
        for b in range(a + 1, len(ones)):
            if (ones[b] - ones[a]) % 2 == 0:
                return False
    return len(w) >= 1

# Negation structure (Exercise 1.4, mapping a→0, b→1) — drop h's overlap with alpharegex
def p_no_01(w):             return len(w) >= 1 and "01" not in w
def p_no_0110(w):           return len(w) >= 1 and "0110" not in w
def p_no_01_no_10(w):       return len(w) >= 1 and "01" not in w and "10" not in w
def p_not_in_0s1s(w):       return len(w) >= 1 and "10" in w  # not in 0*1*
def p_not_exactly_two_0s(w): return len(w) >= 1 and w.count("0") != 2
# new replacements for dropped overlaps
def p_contains_both_0_and_1(w): return "0" in w and "1" in w     # Ex 1.4f
def p_not_in_01plus_star(w):
    # Ex 1.4e: NOT in (01+)*. (01+)* = strings made by concatenating one-or-more
    # blocks of "0 followed by ≥1 ones"; e.g., ε, 01, 011, 0101, 0111, 01011, ...
    if not w: return False
    # parse: empty matches; else must start with '0' followed by ≥1 '1's, then recurse
    def matches(s):
        if not s: return True
        if s[0] != "0": return False
        i = 1
        if i >= len(s) or s[i] != "1": return False
        while i < len(s) and s[i] == "1":
            i += 1
        return matches(s[i:])
    return not matches(w)
def p_even_0s_odd_1s_no_01(w):   # Ex 1.12 (mapped to {0,1})
    return (w.count("0") % 2 == 0 and w.count("1") % 2 == 1 and "01" not in w
            and len(w) >= 1)
def p_ends_with_1(w):       return len(w) >= 1 and w[-1] == "1"
def p_starts_with_00(w):    return len(w) >= 2 and w[:2] == "00"


CASES = [
    # (tag, description, predicate, max_enum_length)
    # 6 alpharegex overlaps (begin_1_end_0, substring_0101, third_is_0, len_is_3_mul,
    # odd_pos_is_1, except_0_and_1) are excluded; replaced with new Sipser cases.
    ("no1_three_1s",                        "Ex 1.6b: contains at least three 1s",      p_three_1s,                    5),
    ("no2_start0_odd_or_start1_even",       "Ex 1.6e: starts 0 odd-len OR starts 1 even-len", p_start0_odd_or_start1_even, 4),
    ("no3_no_110_substring",                "Ex 1.6f: doesn't contain 110 substring",   p_no_110,                      4),
    ("no4_len_at_most_5",                   "Ex 1.6g: length at most 5",                p_len_at_most_5,               6),
    ("no5_except_11_and_111",               "Ex 1.6h: any string except '11' and '111'", p_except_11_111,              4),
    ("no6_twoplus_0s_atmost_one_1",         "Ex 1.6j: ≥2 zeros AND ≤1 ones",            p_two_0s_at_most_one_1,        4),
    ("no7_single_1",                        "Ex 1.53#1: contains exactly one 1",        p_single_1,                    4),
    ("no8_at_least_one_1",                  "Ex 1.53#2: contains at least one 1",       p_at_least_one_1,              4),
    ("no9_contains_001",                    "Ex 1.53#3: contains 001 substring",        p_contains_001,                4),
    ("no10_even_length",                    "Ex 1.53#5: even length",                   p_even_length,                 4),
    ("no11_start_end_same",                 "Ex 1.53#8: starts and ends with same symbol", p_start_end_same,           4),
    ("no12_opt_0_then_1s",                  "Ex 1.53#9: (0|ε)1*",                       p_opt0_then_1s,                4),
    ("no13_even_0s_or_exactly_two_1s",      "Ex 1.6l: even #0s OR exactly two 1s",      p_even0_or_two1,               4),
    ("no14_no_two_1s_odd_apart",            "Ex 1.13: no 1-pair separated by odd # of symbols", p_no_two_1s_odd_apart, 5),
    ("no15_no_01_substring",                "Ex 1.4a: no '01' substring",               p_no_01,                       4),
    ("no16_no_0110_substring",              "Ex 1.4b: no '0110' substring",             p_no_0110,                     5),
    ("no17_no_01_no_10_substring",          "Ex 1.4c: no '01' AND no '10' substring",   p_no_01_no_10,                 4),
    ("no18_not_in_0s_1s",                   "Ex 1.4d: not in 0*1*",                     p_not_in_0s1s,                 4),
    ("no19_not_exactly_two_0s",             "Ex 1.4g: not exactly two 0s",              p_not_exactly_two_0s,          4),
    ("no20_contains_both_0_and_1",          "Ex 1.4f: not in 0* ∪ 1* (contains both)",  p_contains_both_0_and_1,       4),
    ("no21_exactly_01_or_10",               "Ex 1.53#7: exactly {01, 10}",              p_exactly_01_or_10,            3),
    ("no22_not_in_01plus_star",             "Ex 1.4e: not in (01+)*",                   p_not_in_01plus_star,          4),
    ("no23_even_0s_odd_1s_no_01",           "Ex 1.12 (a→0,b→1): even #0s AND odd #1s AND no '01'", p_even_0s_odd_1s_no_01, 5),
    ("no24_ends_with_1",                    "Σ*1: ends with 1",                          p_ends_with_1,                4),
    ("no25_starts_with_00",                 "00Σ*: starts with 00",                      p_starts_with_00,             4),
]


def enumerate_up_to(L):
    out = []
    for k in range(1, L + 1):
        for tup in itertools.product("01", repeat=k):
            out.append("".join(tup))
    return out


def model_block(name, w):
    n = len(w)
    univ = "(" + " ".join(f"${i}" for i in range(n)) + ")"
    zero_arms = " ".join(f"(($ {i}) {str(c=='0').lower()})".replace("$ ", "$") for i, c in enumerate(w))
    one_arms  = " ".join(f"(($ {i}) {str(c=='1').lower()})".replace("$ ", "$") for i, c in enumerate(w))
    return (
        f"(define-model {name}\n"
        f"  (interp-sort Pos {univ})\n"
        f"  (interp-fun zero (match ({zero_arms})))\n"
        f"  (interp-fun one (match ({one_arms}))))\n"
    )


def gen_one(tag, desc, pred, max_len):
    strs = enumerate_up_to(max_len)
    pos = sorted([w for w in strs if pred(w)], key=lambda w: (len(w), w))
    neg = sorted([w for w in strs if not pred(w)], key=lambda w: (len(w), w))
    pos_names = [f"p{w}" for w in pos]
    neg_names = [f"n{w}" for w in neg]
    all_names = pos_names + neg_names
    # models
    mlines = ['(require "../signatures/main.sl")',
              f'(provide {" ".join(all_names)})', '']
    for w, nm in zip(pos + neg, all_names):
        mlines.append(model_block(nm, w))
    (SUITE / "models" / f"{tag}.sl").write_text("\n".join(mlines))
    # top-level
    top = [
        f'; Sipser Ch.1 — {desc}',
        f'; pos={len(pos)} neg={len(neg)} (exhaustive over {{0,1}}^≤{max_len})',
        '',
        '(require "./theories/main.sl")',
        f'(require "models/{tag}.sl")',
        '',
        '(synth-fun r () RegLan)',
        '',
    ]
    for nm in pos_names:
        top.append(f'(constraint      (RegLan.Sem r (RegLan.Asp {nm} 0 (size (Pos {nm})))))')
    for nm in neg_names:
        top.append(f'(constraint (not (RegLan.Sem r (RegLan.Asp {nm} 0 (size (Pos {nm}))))))')
    top.append('')
    top.append('(check-synth)')
    (SUITE / f"{tag}.sl").write_text("\n".join(top))
    return len(pos), len(neg)


def main():
    for tag, desc, pred, ml in CASES:
        if any(pred(w) for w in enumerate_up_to(ml)):
            np, nn = gen_one(tag, desc, pred, ml)
            print(f"{tag}.sl  pos={np:>2}  neg={nn:>2}  |w|≤{ml}  — {desc}")
        else:
            print(f"SKIP {tag}: no positives within length {ml}")


if __name__ == "__main__":
    main()
