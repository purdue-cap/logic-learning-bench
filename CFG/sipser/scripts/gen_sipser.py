#!/usr/bin/env python3
"""Sipser-derived CFG benchmark generator for delis.

Emits 25 .sl problem files per k-tier in ../k{1,2,3}/.
The k-tier reflects the *intended* number of nonterminals in the general-RHS
Delis encoding (S0..S{k-1}); k is approximate, not a proven minimum.

Sampling is by language-membership predicate only — positives/negatives are
drawn from exhaustive enumeration up to a fixed length cap; no target grammar
is consulted. This mirrors how a learner would receive the data.

Alphabets are restricted to single-char SMT-LIB symbols ({a,b} or {a,b,c})
to avoid collisions with numerals.
"""
import itertools
import sys
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
SIPSER_DIR = SCRIPT_DIR.parent
ASP_GEN_DIR = SIPSER_DIR.parent / "asp4cfg" / "scripts"
sys.path.insert(0, str(ASP_GEN_DIR))
from gen import emit  # noqa: E402


# -------- helpers --------

def re_seq(w, seq):
    """w matches seq[0]* seq[1]* ... seq[k-1]* (each block can be empty)."""
    i = 0
    for s in seq:
        while i < len(w) and w[i] == s:
            i += 1
    return i == len(w)


def is_palindrome(w):
    return w == w[::-1]


# ==========================================================================
# K=1 predicates  (general-RHS: one nonterminal S)
# ==========================================================================

# linear ratio over {a,b}
def p_anbn(w):    return re_seq(w, "ab") and w.count("a") == w.count("b") and len(w) >= 1
def p_anb2n(w):   return re_seq(w, "ab") and 2 * w.count("a") == w.count("b") and w.count("a") >= 1
def p_a2nbn(w):   return re_seq(w, "ab") and w.count("a") == 2 * w.count("b") and w.count("b") >= 1
def p_anb3n(w):   return re_seq(w, "ab") and 3 * w.count("a") == w.count("b") and w.count("a") >= 1
def p_a3nbn(w):   return re_seq(w, "ab") and w.count("a") == 3 * w.count("b") and w.count("b") >= 1
def p_anbn1(w):   return re_seq(w, "ab") and w.count("a") + 1 == w.count("b")
def p_an1bn(w):   return re_seq(w, "ab") and w.count("a") == w.count("b") + 1
def p_anbn2(w):   return re_seq(w, "ab") and w.count("a") + 2 == w.count("b")
def p_an2bn(w):   return re_seq(w, "ab") and w.count("a") == w.count("b") + 2

# Dyck
def p_dyck1(w):
    c = 0
    for ch in w:
        c += 1 if ch == "a" else -1
        if c < 0:
            return False
    return c == 0 and len(w) >= 1

# free-order counting over {a,b}
def p_equal_ab(w):       return w.count("a") == w.count("b") and len(w) >= 1
def p_a_ge_b(w):         return w.count("a") >= w.count("b") and len(w) >= 1
def p_b_ge_a(w):         return w.count("b") >= w.count("a") and len(w) >= 1
def p_a_twice_b(w):      return w.count("a") == 2 * w.count("b") and len(w) >= 1
def p_b_twice_a(w):      return w.count("b") == 2 * w.count("a") and len(w) >= 1
def p_a_eq_b_plus_1(w):  return w.count("a") == w.count("b") + 1
def p_a_eq_b_plus_2(w):  return w.count("a") == w.count("b") + 2
def p_b_eq_a_plus_1(w):  return w.count("b") == w.count("a") + 1

def p_prefix_a_ge_b(w):
    c = 0
    for ch in w:
        c += 1 if ch == "a" else -1
        if c < 0:
            return False
    return len(w) >= 1

def p_prefix_b_ge_a(w):
    c = 0
    for ch in w:
        c += 1 if ch == "b" else -1
        if c < 0:
            return False
    return len(w) >= 1

# palindromes
def p_palindrome_ab(w):     return is_palindrome(w) and len(w) >= 1
def p_wwR_even_ab(w):       return len(w) >= 2 and len(w) % 2 == 0 and is_palindrome(w)
def p_palindrome_odd_ab(w): return len(w) >= 1 and len(w) % 2 == 1 and is_palindrome(w)

# 3-symbol classics with a separator
def p_wcwR(w):    # {u c u^R | u in {a,b}*}, u can be ε
    if w.count("c") != 1:
        return False
    i = w.index("c")
    u, v = w[:i], w[i + 1:]
    return u == v[::-1]

def p_ancbn(w):   # {a^n c b^n | n >= 0}
    if w.count("c") != 1:
        return False
    i = w.index("c")
    u, v = w[:i], w[i + 1:]
    return all(ch == "a" for ch in u) and all(ch == "b" for ch in v) and len(u) == len(v)


K1 = [
    ("anbn",              "ab",  p_anbn),
    ("anb2n",             "ab",  p_anb2n),
    ("a2nbn",             "ab",  p_a2nbn),
    ("anb3n",             "ab",  p_anb3n),
    ("a3nbn",             "ab",  p_a3nbn),
    ("anbn1",             "ab",  p_anbn1),
    ("an1bn",             "ab",  p_an1bn),
    ("anbn2",             "ab",  p_anbn2),
    ("an2bn",             "ab",  p_an2bn),
    ("dyck1",             "ab",  p_dyck1),
    ("equal_ab",          "ab",  p_equal_ab),
    ("a_ge_b",            "ab",  p_a_ge_b),
    ("b_ge_a",            "ab",  p_b_ge_a),
    ("a_twice_b",         "ab",  p_a_twice_b),
    ("b_twice_a",         "ab",  p_b_twice_a),
    ("a_eq_b_plus_1",     "ab",  p_a_eq_b_plus_1),
    ("a_eq_b_plus_2",     "ab",  p_a_eq_b_plus_2),
    ("b_eq_a_plus_1",     "ab",  p_b_eq_a_plus_1),
    ("prefix_a_ge_b",     "ab",  p_prefix_a_ge_b),
    ("prefix_b_ge_a",     "ab",  p_prefix_b_ge_a),
    ("palindrome_ab",     "ab",  p_palindrome_ab),
    ("wwR_even_ab",       "ab",  p_wwR_even_ab),
    ("palindrome_odd_ab", "ab",  p_palindrome_odd_ab),
    ("wcwR",              "abc", p_wcwR),
    ("ancbn",             "abc", p_ancbn),
]


# ==========================================================================
# K=2 predicates  (general-RHS: two nonterminals)
# ==========================================================================

def p_three_as(w):       return w.count("a") >= 3
def p_three_bs(w):       return w.count("b") >= 3
def p_four_as(w):        return w.count("a") >= 4
def p_se_same_ab(w):     return len(w) >= 1 and w[0] == w[-1]
def p_se_diff_ab(w):     return len(w) >= 2 and w[0] != w[-1]
def p_starts_a(w):       return len(w) >= 1 and w[0] == "a"
def p_starts_b(w):       return len(w) >= 1 and w[0] == "b"
def p_ends_a(w):         return len(w) >= 1 and w[-1] == "a"
def p_ends_b(w):         return len(w) >= 1 and w[-1] == "b"
def p_odd_length_ab(w):  return len(w) % 2 == 1
def p_even_length_ab(w): return len(w) >= 2 and len(w) % 2 == 0
def p_odd_mid_a(w):      return len(w) % 2 == 1 and w[len(w) // 2] == "a"
def p_odd_mid_b(w):      return len(w) % 2 == 1 and w[len(w) // 2] == "b"
def p_contains_aa(w):    return "aa" in w
def p_contains_ab(w):    return "ab" in w
def p_contains_bb(w):    return "bb" in w
def p_contains_ba(w):    return "ba" in w

def p_wa_equal_ab(w):
    if not w or w[-1] != "a":
        return False
    pre = w[:-1]
    return pre.count("a") == pre.count("b")

def p_wb_equal_ab(w):
    if not w or w[-1] != "b":
        return False
    pre = w[:-1]
    return pre.count("a") == pre.count("b")

def p_anbn_plus(w):  # (a^n b^n)+ , n >= 1 per block, one or more blocks
    if not w:
        return False
    i = 0
    while i < len(w):
        a0 = i
        while i < len(w) and w[i] == "a":
            i += 1
        na = i - a0
        if na == 0:
            return False
        b0 = i
        while i < len(w) and w[i] == "b":
            i += 1
        nb = i - b0
        if na != nb:
            return False
    return True

def p_an_gt_bm(w):    return re_seq(w, "ab") and w.count("a") > w.count("b") and w.count("a") >= 1
def p_an_lt_bm(w):    return re_seq(w, "ab") and w.count("a") < w.count("b") and w.count("b") >= 1
def p_an_ge_bm(w):    return re_seq(w, "ab") and w.count("a") >= w.count("b") and len(w) >= 1
def p_an_le_bm(w):    return re_seq(w, "ab") and w.count("a") <= w.count("b") and len(w) >= 1
def p_aplus_bplus(w): return re_seq(w, "ab") and w.count("a") >= 1 and w.count("b") >= 1


K2 = [
    ("three_as",       "ab", p_three_as),
    ("three_bs",       "ab", p_three_bs),
    ("four_as",        "ab", p_four_as),
    ("start_end_same", "ab", p_se_same_ab),
    ("start_end_diff", "ab", p_se_diff_ab),
    ("starts_a",       "ab", p_starts_a),
    ("starts_b",       "ab", p_starts_b),
    ("ends_a",         "ab", p_ends_a),
    ("ends_b",         "ab", p_ends_b),
    ("odd_length",     "ab", p_odd_length_ab),
    ("even_length",    "ab", p_even_length_ab),
    ("odd_mid_a",      "ab", p_odd_mid_a),
    ("odd_mid_b",      "ab", p_odd_mid_b),
    ("contains_aa",    "ab", p_contains_aa),
    ("contains_ab",    "ab", p_contains_ab),
    ("contains_bb",    "ab", p_contains_bb),
    ("contains_ba",    "ab", p_contains_ba),
    ("wa_equal_ab",    "ab", p_wa_equal_ab),
    ("wb_equal_ab",    "ab", p_wb_equal_ab),
    ("anbn_plus",      "ab", p_anbn_plus),
    ("an_gt_bm",       "ab", p_an_gt_bm),
    ("an_lt_bm",       "ab", p_an_lt_bm),
    ("an_ge_bm",       "ab", p_an_ge_bm),
    ("an_le_bm",       "ab", p_an_le_bm),
    ("aplus_bplus",    "ab", p_aplus_bplus),
]


# ==========================================================================
# K=3 predicates  (general-RHS: three nonterminals; usually unions)
# ==========================================================================

def p_anbn_or_bnan(w):
    a, b = w.count("a"), w.count("b")
    if a != b or len(w) == 0:
        return False
    return re_seq(w, "ab") or re_seq(w, "ba")

def _seq_ab(w):
    return re_seq(w, "ab")

def p_anbn_or_anb2n(w):
    if not _seq_ab(w): return False
    a, b = w.count("a"), w.count("b")
    if a < 1: return False
    return a == b or 2 * a == b

def p_anbn_or_a2nbn(w):
    if not _seq_ab(w): return False
    a, b = w.count("a"), w.count("b")
    if a < 1 or b < 1: return False
    return a == b or a == 2 * b

def p_anbn_or_anb3n(w):
    if not _seq_ab(w): return False
    a, b = w.count("a"), w.count("b")
    if a < 1: return False
    return a == b or 3 * a == b

def p_anbn_or_a3nbn(w):
    if not _seq_ab(w): return False
    a, b = w.count("a"), w.count("b")
    if a < 1 or b < 1: return False
    return a == b or a == 3 * b

def p_anb2n_or_a2nbn(w):
    if not _seq_ab(w): return False
    a, b = w.count("a"), w.count("b")
    return (2 * a == b and a >= 1) or (a == 2 * b and b >= 1)

def p_anbn_or_anbn1(w):
    if not _seq_ab(w): return False
    a, b = w.count("a"), w.count("b")
    return (a == b and a >= 1) or (a + 1 == b)

def p_anbn_or_an1bn(w):
    if not _seq_ab(w): return False
    a, b = w.count("a"), w.count("b")
    return (a == b and a >= 1) or (a == b + 1)

def p_anbn1_or_an1bn(w):
    if not _seq_ab(w): return False
    a, b = w.count("a"), w.count("b")
    return (a + 1 == b) or (a == b + 1)

def p_anbn_or_anbn2(w):
    if not _seq_ab(w): return False
    a, b = w.count("a"), w.count("b")
    return (a == b and a >= 1) or (a + 2 == b)

def p_equal_or_twice_a(w):
    if len(w) == 0: return False
    a, b = w.count("a"), w.count("b")
    return a == b or a == 2 * b

def p_equal_or_twice_b(w):
    if len(w) == 0: return False
    a, b = w.count("a"), w.count("b")
    return a == b or b == 2 * a

def p_palindrome_or_equal_ab(w):
    if len(w) == 0: return False
    return is_palindrome(w) or w.count("a") == w.count("b")

def p_palindrome_or_anbn(w):
    if len(w) == 0: return False
    if is_palindrome(w): return True
    if _seq_ab(w) and w.count("a") == w.count("b") and w.count("a") >= 1: return True
    return False

def p_equal_ab_starts_a(w):
    return len(w) >= 1 and w[0] == "a" and w.count("a") == w.count("b")

def p_equal_ab_ends_a(w):
    return len(w) >= 1 and w[-1] == "a" and w.count("a") == w.count("b")

def p_equal_ab_starts_a_ends_b(w):
    return len(w) >= 2 and w[0] == "a" and w[-1] == "b" and w.count("a") == w.count("b")

def p_equal_ab_starts_b_ends_a(w):
    return len(w) >= 2 and w[0] == "b" and w[-1] == "a" and w.count("a") == w.count("b")

def p_not_ww(w):
    if not w: return False
    n = len(w)
    if n % 2 == 1: return True
    h = n // 2
    return w[:h] != w[h:]

def p_anbn_or_a_eq_b_plus_1(w):
    if not _seq_ab(w): return False
    a, b = w.count("a"), w.count("b")
    return (a == b and a >= 1) or (a == b + 1)

def p_anbn_or_b_eq_a_plus_1(w):
    if not _seq_ab(w): return False
    a, b = w.count("a"), w.count("b")
    return (a == b and a >= 1) or (b == a + 1)

# 3-symbol: Sipser Ex 2.9 / 2.16 / variants — all over a^i b^j c^k
def _seq_abc(w):
    return re_seq(w, "abc")

def p_abcn_i_eq_j_or_j_eq_k(w):
    if not _seq_abc(w) or len(w) == 0: return False
    a, b, c = w.count("a"), w.count("b"), w.count("c")
    return a == b or b == c

def p_abcn_i_eq_j_or_i_eq_k(w):
    if not _seq_abc(w) or len(w) == 0: return False
    a, b, c = w.count("a"), w.count("b"), w.count("c")
    return a == b or a == c

def p_abcn_j_eq_k_or_i_eq_k(w):
    if not _seq_abc(w) or len(w) == 0: return False
    a, b, c = w.count("a"), w.count("b"), w.count("c")
    return b == c or a == c

def p_abcn_any_pair(w):
    if not _seq_abc(w) or len(w) == 0: return False
    a, b, c = w.count("a"), w.count("b"), w.count("c")
    return a == b or b == c or a == c


K3 = [
    ("anbn_or_bnan",            "ab",  p_anbn_or_bnan),
    ("anbn_or_anb2n",           "ab",  p_anbn_or_anb2n),
    ("anbn_or_a2nbn",           "ab",  p_anbn_or_a2nbn),
    ("anbn_or_anb3n",           "ab",  p_anbn_or_anb3n),
    ("anbn_or_a3nbn",           "ab",  p_anbn_or_a3nbn),
    ("anb2n_or_a2nbn",          "ab",  p_anb2n_or_a2nbn),
    ("anbn_or_anbn1",           "ab",  p_anbn_or_anbn1),
    ("anbn_or_an1bn",           "ab",  p_anbn_or_an1bn),
    ("anbn1_or_an1bn",          "ab",  p_anbn1_or_an1bn),
    ("anbn_or_anbn2",           "ab",  p_anbn_or_anbn2),
    ("equal_or_twice_a",        "ab",  p_equal_or_twice_a),
    ("equal_or_twice_b",        "ab",  p_equal_or_twice_b),
    ("palindrome_or_equal_ab",  "ab",  p_palindrome_or_equal_ab),
    ("palindrome_or_anbn",      "ab",  p_palindrome_or_anbn),
    ("equal_ab_starts_a",       "ab",  p_equal_ab_starts_a),
    ("equal_ab_ends_a",         "ab",  p_equal_ab_ends_a),
    ("equal_ab_starts_a_ends_b","ab",  p_equal_ab_starts_a_ends_b),
    ("equal_ab_starts_b_ends_a","ab",  p_equal_ab_starts_b_ends_a),
    ("not_ww",                  "ab",  p_not_ww),
    ("anbn_or_a_eq_b_plus_1",   "ab",  p_anbn_or_a_eq_b_plus_1),
    ("anbn_or_b_eq_a_plus_1",   "ab",  p_anbn_or_b_eq_a_plus_1),
    ("abcn_i_eq_j_or_j_eq_k",   "abc", p_abcn_i_eq_j_or_j_eq_k),
    ("abcn_i_eq_j_or_i_eq_k",   "abc", p_abcn_i_eq_j_or_i_eq_k),
    ("abcn_j_eq_k_or_i_eq_k",   "abc", p_abcn_j_eq_k_or_i_eq_k),
    ("abcn_any_pair",           "abc", p_abcn_any_pair),
]


# ==========================================================================
# generation
# ==========================================================================

POS_CAP = 8
NEG_CAP = 12

def enumerate_up_to(alphabet, n):
    out = []
    for L in range(1, n + 1):
        for tup in itertools.product(alphabet, repeat=L):
            out.append("".join(tup))
    return out


def gen_one(k, name, alphabet, pred, out_dir):
    # length budgets
    if len(set(alphabet)) == 2:
        max_total = 7   # 2 + 4 + ... + 128 ≈ 254 strings
        max_pos   = 7
    else:  # 3-symbol
        max_total = 5   # 3 + 9 + 27 + 81 + 243 = 363 strings
        max_pos   = 5

    strs = enumerate_up_to(alphabet, max_total)
    pos_all = [w for w in strs if pred(w) and len(w) <= max_pos]
    neg_all = [w for w in strs if not pred(w)]
    pos = sorted(pos_all, key=lambda w: (len(w), w))[:POS_CAP]
    neg = sorted(neg_all, key=lambda w: (len(w), w))[:NEG_CAP]

    if not pos:
        raise ValueError(f"{name}: no positives found within len {max_pos}")
    if not neg:
        raise ValueError(f"{name}: no negatives found")

    alph = sorted(set(alphabet))
    text = emit(k, pos, neg, alph, source=f"sipser-derived: {name}")
    out_path = out_dir / f"{name}.sl"
    out_path.write_text(text)
    return len(pos), len(neg)


def main():
    summary = []
    for k, langs in [(1, K1), (2, K2), (3, K3)]:
        out_dir = SIPSER_DIR / f"k{k}"
        out_dir.mkdir(parents=True, exist_ok=True)
        for name, alpha, pred in langs:
            try:
                np_, nn = gen_one(k, name, alpha, pred, out_dir)
                summary.append((k, name, np_, nn, len(set(alpha))))
            except Exception as e:
                print(f"FAIL k{k}/{name}: {e}", file=sys.stderr)
                raise
        assert len(langs) == 25, f"k{k} has {len(langs)} languages, expected 25"

    for k, name, np_, nn, asize in summary:
        print(f"k{k}/{name}.sl  pos={np_:>2}  neg={nn:>2}  |Σ|={asize}")
    print(f"\ntotal: {len(summary)} files")


if __name__ == "__main__":
    main()
