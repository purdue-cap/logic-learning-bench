#!/usr/bin/env python3
"""Sipser-derived CFG benchmark generator for delis.

Emits flat, sequentially numbered .sl problem files (0001.sl, 0002.sl, ...)
directly in ../ (the sipser dir), in order of the K1, K2, K3 language lists.
Each file's header records its intended number of nonterminals in the
general-RHS Delis encoding (S0..S{k-1}); k is approximate, not a proven
minimum, and the source language name is preserved in the header comment.

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

AUTHOR = "Chentian Wu"

# Honest provenance. Citations reference Sipser, Introduction to the Theory of
# Computation (3rd ed.). An exact Exercise/Example/Problem number is given only
# where the language genuinely matches that item; otherwise we use a generic
# "Formal language theory; Sipser-style CFG separation" source rather than
# fabricate a number. Alphabets are adapted to {a,b}/{a,b,c} as noted.
_SRC_GENERIC = "Formal language theory; Sipser-style CFG separation"

METADATA = {
    # ---- K1 ----
    "anbn":              ("Sipser (3e) Sec. 2.1, the canonical CFL {a^n b^n} (cf. {0^n 1^n}, grammar S -> aSb | eps)", "{ a^n b^n | n >= 1 }"),
    "anb2n":             ("Sipser (3e) Example 2.45 / Problem 2.55 (T-component T -> aTbb | abb)", "{ a^n b^(2n) | n >= 1 }"),
    "a2nbn":             ("Variant of Sipser (3e) Example 2.45 (mirror of the {a^n b^(2n)} component)", "{ a^(2n) b^n | n >= 1 }"),
    "anb3n":             (_SRC_GENERIC, "{ a^n b^(3n) | n >= 1 }"),
    "a3nbn":             (_SRC_GENERIC, "{ a^(3n) b^n | n >= 1 }"),
    "anbn1":             (_SRC_GENERIC, "{ a^n b^(n+1) | n >= 0 } over a* b*"),
    "an1bn":             (_SRC_GENERIC, "{ a^(n+1) b^n | n >= 0 } over a* b*"),
    "anbn2":             (_SRC_GENERIC, "{ a^n b^(n+2) | n >= 0 } over a* b*"),
    "an2bn":             (_SRC_GENERIC, "{ a^(n+2) b^n | n >= 0 } over a* b*"),
    "dyck1":             ("Sipser (3e) Example 2.3 (grammar G3: S -> aSb | SS | eps; balanced parentheses)", "Dyck language: balanced parentheses (a='(' , b=')')"),
    "equal_ab":          ("Sipser (3e) Problem 2.28(b): equal numbers of a's and b's", "{ w | #a(w) = #b(w) }"),
    "a_ge_b":            ("Sipser (3e) Problem 2.28(c): number of a's is at least the number of b's", "{ w | #a(w) >= #b(w) }"),
    "b_ge_a":            ("Mirror of Sipser (3e) Problem 2.28(c)", "{ w | #b(w) >= #a(w) }"),
    "a_twice_b":         ("Sipser (3e) Problem 2.21: twice as many a's as b's", "{ w | #a(w) = 2*#b(w) }"),
    "b_twice_a":         ("Mirror of Sipser (3e) Problem 2.21", "{ w | #b(w) = 2*#a(w) }"),
    "a_eq_b_plus_1":     (_SRC_GENERIC, "{ w | #a(w) = #b(w) + 1 }"),
    "a_eq_b_plus_2":     (_SRC_GENERIC, "{ w | #a(w) = #b(w) + 2 }"),
    "b_eq_a_plus_1":     (_SRC_GENERIC, "{ w | #b(w) = #a(w) + 1 }"),
    "prefix_a_ge_b":     ("Sipser (3e) Problem 2.28(a): in every prefix, #a >= #b", "{ w | every prefix has #a >= #b }"),
    "prefix_b_ge_a":     ("Mirror of Sipser (3e) Problem 2.28(a)", "{ w | every prefix has #b >= #a }"),
    "palindrome_ab":     ("Sipser (3e) Exercise 2.4(e): palindromes w = w^R (adapted to {a,b})", "{ w | w = w^R }"),
    "wwR_even_ab":       ("Sipser (3e) Problem 2.58: { w w^R } (even-length palindromes)", "{ w w^R | w in {a,b}* }"),
    "palindrome_odd_ab": ("Variant of Sipser (3e) Exercise 2.4(d,e): odd-length palindromes", "{ w | w = w^R and |w| is odd }"),
    "wcwR":              ("Center-marked palindrome (deterministic CFL); cf. Sipser (3e) Sec. 2.1", "{ u c u^R | u in {a,b}* }"),
    "ancbn":             ("Center-marked {a^n c b^n}; cf. Sipser (3e) Sec. 2.1", "{ a^n c b^n | n >= 0 }"),
    # ---- K2 ----
    "three_as":          ("Sipser (3e) Exercise 2.4(a): at least three 1s (adapted: 1 -> a)", "{ w | #a(w) >= 3 }"),
    "three_bs":          ("Mirror of Sipser (3e) Exercise 2.4(a)", "{ w | #b(w) >= 3 }"),
    "four_as":           ("Variant of Sipser (3e) Exercise 2.4(a)", "{ w | #a(w) >= 4 }"),
    "start_end_same":    ("Sipser (3e) Exercise 2.4(b): starts and ends with the same symbol", "{ w | w[0] = w[-1] }"),
    "start_end_diff":    ("Complement variant of Sipser (3e) Exercise 2.4(b)", "{ w | |w| >= 2 and w[0] != w[-1] }"),
    "starts_a":          (_SRC_GENERIC, "{ w | w starts with a }"),
    "starts_b":          (_SRC_GENERIC, "{ w | w starts with b }"),
    "ends_a":            (_SRC_GENERIC, "{ w | w ends with a }"),
    "ends_b":            (_SRC_GENERIC, "{ w | w ends with b }"),
    "odd_length":        ("Sipser (3e) Exercise 2.4(c): the length of w is odd", "{ w | |w| is odd }"),
    "even_length":       ("Complement of Sipser (3e) Exercise 2.4(c)", "{ w | |w| is even, |w| >= 2 }"),
    "odd_mid_a":         ("Sipser (3e) Exercise 2.4(d): odd length and middle symbol is 0 (adapted: 0 -> a)", "{ w | |w| odd and middle symbol = a }"),
    "odd_mid_b":         ("Variant of Sipser (3e) Exercise 2.4(d) (middle symbol = b)", "{ w | |w| odd and middle symbol = b }"),
    "contains_aa":       (_SRC_GENERIC, "{ w | w contains substring aa }"),
    "contains_ab":       (_SRC_GENERIC, "{ w | w contains substring ab }"),
    "contains_bb":       (_SRC_GENERIC, "{ w | w contains substring bb }"),
    "contains_ba":       (_SRC_GENERIC, "{ w | w contains substring ba }"),
    "wa_equal_ab":       ("Sipser (3e) Problem 2.54: { w a | w has equal numbers of a's and b's }", "{ w a | #a(w) = #b(w) }"),
    "wb_equal_ab":       ("Mirror of Sipser (3e) Problem 2.54", "{ w b | #a(w) = #b(w) }"),
    "anbn_plus":         (_SRC_GENERIC, "{ (a^n b^n)+ | one or more blocks, n >= 1 per block }"),
    "an_gt_bm":          (_SRC_GENERIC, "{ a^i b^j | i > j } over a* b*"),
    "an_lt_bm":          (_SRC_GENERIC, "{ a^i b^j | i < j } over a* b*"),
    "an_ge_bm":          (_SRC_GENERIC, "{ a^i b^j | i >= j } over a* b*"),
    "an_le_bm":          (_SRC_GENERIC, "{ a^i b^j | i <= j } over a* b*"),
    "aplus_bplus":       (_SRC_GENERIC, "{ a^i b^j | i >= 1, j >= 1 }"),
    # ---- K3 ----
    "anbn_or_bnan":      ("Sipser (3e) Sec. 2.1 (Designing CFGs): the union {a^n b^n} U {b^n a^n} (cf. {0^n 1^n} U {1^n 0^n})", "{ a^n b^n } U { b^n a^n }"),
    "anbn_or_anb2n":     ("Sipser (3e) Example 2.45 / Problem 2.55 (grammar R -> S | T, S -> aSb | ab, T -> aTbb | abb)", "{ a^n b^n } U { a^n b^(2n) }"),
    "anbn_or_a2nbn":     ("Variant of Sipser (3e) Example 2.45", "{ a^n b^n } U { a^(2n) b^n }"),
    "anbn_or_anb3n":     (_SRC_GENERIC, "{ a^n b^n } U { a^n b^(3n) }"),
    "anbn_or_a3nbn":     (_SRC_GENERIC, "{ a^n b^n } U { a^(3n) b^n }"),
    "anb2n_or_a2nbn":    (_SRC_GENERIC, "{ a^n b^(2n) } U { a^(2n) b^n }"),
    "anbn_or_anbn1":     (_SRC_GENERIC, "{ a^n b^n } U { a^n b^(n+1) }"),
    "anbn_or_an1bn":     (_SRC_GENERIC, "{ a^n b^n } U { a^(n+1) b^n }"),
    "anbn1_or_an1bn":    (_SRC_GENERIC, "{ a^i b^j | |i - j| = 1 } over a* b*"),
    "anbn_or_anbn2":     (_SRC_GENERIC, "{ a^n b^n } U { a^n b^(n+2) }"),
    "equal_or_twice_a":  ("Union of Sipser (3e) Problem 2.28(b) and Problem 2.21", "{ w | #a = #b } U { w | #a = 2*#b }"),
    "equal_or_twice_b":  ("Union of Sipser (3e) Problem 2.28(b) and (mirror of) Problem 2.21", "{ w | #a = #b } U { w | #b = 2*#a }"),
    "palindrome_or_equal_ab": ("Union of Sipser (3e) Exercise 2.4(e) and Problem 2.28(b)", "{ w | w = w^R } U { w | #a = #b }"),
    "palindrome_or_anbn":     ("Union of Sipser (3e) Exercise 2.4(e) and the canonical {a^n b^n}", "{ w | w = w^R } U { a^n b^n }"),
    "equal_ab_starts_a":      ("Sipser (3e) Problem 2.28(b) with a prefix constraint", "{ w | #a = #b and w starts with a }"),
    "equal_ab_ends_a":        ("Sipser (3e) Problem 2.28(b) with a suffix constraint", "{ w | #a = #b and w ends with a }"),
    "equal_ab_starts_a_ends_b": ("Sipser (3e) Problem 2.28(b) with boundary constraints", "{ w | #a = #b, starts with a, ends with b }"),
    "equal_ab_starts_b_ends_a": ("Sipser (3e) Problem 2.28(b) with boundary constraints", "{ w | #a = #b, starts with b, ends with a }"),
    "not_ww":            ("Complement of { w w } (a classic context-free language); cf. Sipser (3e) Ch. 2", "{ w | w is not of the form xx for any x }"),
    "abcn_i_eq_j_or_j_eq_k": ("Sipser (3e) Exercise 2.9: A = { a^i b^j c^k | i = j or j = k }", "{ a^i b^j c^k | i = j or j = k }"),
    "abcn_i_eq_j_or_i_eq_k": ("Sipser (3e) Problem 2.57: B = { a^i b^j c^k | i = j or i = k }", "{ a^i b^j c^k | i = j or i = k }"),
    "abcn_j_eq_k_or_i_eq_k": ("Variant of Sipser (3e) Exercise 2.9 / Problem 2.57", "{ a^i b^j c^k | j = k or i = k }"),
    "abcn_any_pair":     ("Variant of Sipser (3e) Exercise 2.9 / Problem 2.57 (any pair equal)", "{ a^i b^j c^k | i = j or j = k or i = k }"),
}


def meta_for(name):
    return METADATA.get(name, (_SRC_GENERIC, name))

def enumerate_up_to(alphabet, n):
    out = []
    for L in range(1, n + 1):
        for tup in itertools.product(alphabet, repeat=L):
            out.append("".join(tup))
    return out


def gen_one(k, name, alphabet, pred, out_path):
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
    info_source, description = meta_for(name)
    text = emit(
        k, pos, neg, alph,
        source=f"sipser-derived: {name}",
        author=AUTHOR,
        info_source=info_source,
        description=description,
    )
    out_path.write_text(text)
    return len(pos), len(neg)


def main():
    out_dir = SIPSER_DIR
    out_dir.mkdir(parents=True, exist_ok=True)
    summary = []
    idx = 0
    for k, langs in [(1, K1), (2, K2), (3, K3)]:
        for name, alpha, pred in langs:
            idx += 1
            out_path = out_dir / f"{idx:04d}.sl"
            try:
                np_, nn = gen_one(k, name, alpha, pred, out_path)
                summary.append((out_path.name, k, name, np_, nn, len(set(alpha))))
            except Exception as e:
                print(f"FAIL {out_path.name} (k{k}/{name}): {e}", file=sys.stderr)
                raise

    for fname, k, name, np_, nn, asize in summary:
        print(f"{fname}  k={k}  {name:<28} pos={np_:>2}  neg={nn:>2}  |Σ|={asize}")
    print(f"\ntotal: {len(summary)} files")


if __name__ == "__main__":
    main()
