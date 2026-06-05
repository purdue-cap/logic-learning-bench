#!/usr/bin/env python3
"""Generate Delis .sl benchmark files from asp4cfg Abbadingo-format datasets.

Produces a Delis CFG hypothesis with K nonterminals (S0..S{K-1}, S0 = start)
using the anbn-style general-RHS encoding (cfg.++ for binary RHS chaining),
not Chomsky NF. Set --k to vary the nonterminal count.
"""
import argparse
import os
import sys
from pathlib import Path


def read_abbadingo(path: Path):
    pos, neg = [], []
    with path.open() as f:
        n = int(next(f).split()[0])
        for _ in range(n):
            cls, length, *syms = next(f).split()
            word = "".join(syms)
            (pos if cls == "1" else neg).append(word)
    return pos, neg


def sample(pos, neg, max_len_pos, neg_cap):
    pos_sel = sorted({w for w in pos if len(w) <= max_len_pos}, key=lambda w: (len(w), w))
    neg_sorted = sorted({w for w in neg}, key=lambda w: (len(w), w))
    neg_sel = neg_sorted[:neg_cap]
    return pos_sel, neg_sel


def alphabet_of(words):
    return sorted({c for w in words for c in w})


def model_block(name, word, alphabet):
    n = len(word)
    univ = "(" + " ".join(f"${i}" for i in range(n)) + ")"
    lines = [f"(define-model {name}"]
    lines.append(f"  (define-univ Pos {univ})")
    for sym in alphabet:
        true_arms = " ".join(f"(($ {i}) true)".replace("$ ", "$") for i, c in enumerate(word) if c == sym)
        arms = (true_arms + " " if true_arms else "") + "((_) false)"
        lines.append(f"  (interp-fun {sym} (match ({arms})))")
    lines.append(")")
    return "\n".join(lines)


def emit(k: int, pos, neg, alphabet, source: str,
         author: str = None, info_source: str = None, description: str = None) -> str:
    rhs_terms = " ".join(f"({a})" for a in alphabet) + " (cfg.++ Rhs Rhs) " + " ".join(
        f"(cfg.rhs.S{i})" for i in range(k)
    )
    lhs_terms = " ".join(f"(cfg.lhs.S{i} Rhs Rules)" for i in range(k)) + " (end)"

    reset_modes = " ".join(f"reset.S{i}" for i in range(k))
    find_modes = " ".join(f"find.S{i}" for i in range(k))
    all_reset_or = "(or " + " ".join(f"(= (mode asp) reset.S{i})" for i in range(k)) + ")"

    # Header
    out = []
    out.append(f"; Generated from {source}")
    out.append(f"; K={k} nonterminals (S0..S{k-1}); S0 is the start symbol")
    out.append(f"; {len(pos)} positives + {len(neg)} negatives = {len(pos)+len(neg)} constraints")

    def _esc(s):
        return s.replace("\\", "\\\\").replace('"', '\\"')

    if author is not None:
        out.append(f'(set-info :author "{_esc(author)}")')
    if info_source is not None:
        out.append(f'(set-info :source "{_esc(info_source)}")')
    if description is not None:
        out.append(f'(set-info :description "{_esc(description)}")')
    out.append("")
    out.append("")
    out.append("")
    out.append("(declare-term-types")
    out.append(" ((CFG 0) (Rhs 0) (Rules 0))")
    out.append(" (")
    out.append("   ((cfg.top.S0 Rhs Rules))")
    out.append(f"   ({rhs_terms})")
    out.append(f"   ({lhs_terms})")
    out.append(" )")
    out.append(")")
    out.append("")
    out.append("(declare-sort Pos 0)")
    for a in alphabet:
        out.append(f"(declare-fun {a} (Pos) Bool)")
    out.append("")

    # Models
    def safe_name(prefix, word):
        return f"w_{prefix}_{word if word else 'eps'}"

    for w in pos:
        out.append(model_block(safe_name("p", w), w, alphabet))
        out.append("")
    for w in neg:
        out.append(model_block(safe_name("n", w), w, alphabet))
        out.append("")

    # Aspect
    out.append("(define-finite CFG.Asp")
    out.append("  (record")
    out.append("    (model Model)")
    out.append("    (i Int)")
    out.append("    (j Int)")
    out.append(f"    (mode (enum base {reset_modes} {find_modes})))")
    out.append("  :where (and (<= 0 i) (<= i j) (<= j (size (Pos model)))))")
    out.append("")

    # CFG.Sem: top dispatches every reset.Si mode.
    # reset.S0 (start matches): try start RHS in base, or find.S0 on lhs chain.
    # reset.Si (i>0): start doesn't carry Si, only walk lhs chain in find.Si.
    # Matches Krogmeier & Madhusudan 2023, Fig 7 (top(z)/top(x) cases).
    # Without the i>0 clauses, cfg.rhs.Si in any RHS propagates to aux at
    # asp.mode=reset.Si which evaluates to false; Si is then unreachable
    # and the synthesizer collapses to a 1-NT solution every time.
    out.append("(define-semantics")
    out.append("  ((CFG.Sem (n CFG) (asp CFG.Asp)))")
    out.append("  ((match n")
    out.append("     ((cfg.top.S0 x y)")
    out.append("      (or")
    out.append("          (and (= (mode asp) reset.S0)")
    out.append("               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))")
    out.append("                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0))))")
    for i in range(1, k):
        out.append(f"          (and (= (mode asp) reset.S{i})")
        out.append(f"               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S{i})))")
    out.append("      )))))")
    out.append("")

    # Rhs.Sem: terminals, ++, rhs.Si
    out.append("(define-semantics")
    out.append("  ((Rhs.Sem (n Rhs) (asp CFG.Asp)))")
    out.append("  ((match n")
    for a in alphabet:
        out.append(f"     (({a})")
        out.append("      (or (and (= (mode asp) base)")
        out.append("               (= (j asp) (+ (i asp) 1))")
        out.append(f"               ({a} (i asp)))")
        out.append(f"          (and {all_reset_or}")
        out.append("               (CFG.Sem (parent n) asp))))")
    out.append("     ((cfg.++ x y)")
    out.append("      (or (and (= (mode asp) base)")
    out.append("               (exists ((k (int-range (i asp) (j asp))))")
    out.append("                 (and (Rhs.Sem x (CFG.Asp (model asp) (i asp) k base))")
    out.append("                      (Rhs.Sem y (CFG.Asp (model asp) k (j asp) base)))))")
    out.append(f"          (and {all_reset_or}")
    out.append("               (CFG.Sem (parent n) asp))))")
    for i in range(k):
        is_last = (i == k - 1)
        tail = "))))))" if is_last else ")))"
        out.append(f"     ((cfg.rhs.S{i})")
        out.append("      (and (= (mode asp) base)")
        out.append(f"           (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S{i}){tail}")
    out.append("")

    # Rules.Sem: per-Si dispatch.
    # For each (cfg.lhs.Si x y) node we must handle:
    #   - mode = reset.Sj (ANY j): propagate up via CFG.Sem(parent, asp).
    #       This is the paper's reset(z) `_` rule (Krogmeier & Madhusudan 2023,
    #       Fig 7): at any non-top node, for any z, climb up in reset(z)
    #       regardless of the node's nonterminal label. Using only reset.Si
    #       here kills any reset.Sj (j != i) walk the moment it crosses a
    #       cfg.lhs.Si node with a different label, so the rules spine cannot
    #       mix nonterminals and every multi-NT solution is wrongly rejected.
    #       Rhs.Sem already does this correctly via all_reset_or.
    #   - mode = find.Si:   try x as a base-mode Rhs, OR recurse on tail in find.Si
    #   - mode = find.Sj (j != i): SKIP this production, recurse on tail in find.Sj
    # The skip clauses are required when K >= 2: the synthesized rules list
    # interleaves productions for different NTs, and find.Si traversal must
    # be able to walk past productions for other NTs.
    out.append("(define-semantics")
    out.append("  ((Rules.Sem (n Rules) (asp CFG.Asp)))")
    out.append("  ((match n")
    for i in range(k):
        out.append(f"     ((cfg.lhs.S{i} x y)")
        out.append("      (or")
        out.append(f"          (and {all_reset_or}")
        out.append("               (CFG.Sem (parent n) asp))")
        out.append(f"          (and (= (mode asp) find.S{i})")
        out.append("               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))")
        out.append(f"                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S{i}))))")
        for j in range(k):
            if j == i:
                continue
            out.append(f"          (and (= (mode asp) find.S{j})")
            out.append(f"               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S{j})))")
        out.append("      ))")
    out.append("     ((end) false))))")
    out.append("")

    out.append("(synth-fun g () CFG)")
    out.append("")

    for w in pos:
        nm = safe_name("p", w)
        out.append(f"(constraint      (CFG.Sem g (CFG.Asp {nm} 0 (size (Pos {nm})) reset.S0)))")
    for w in neg:
        nm = safe_name("n", w)
        out.append(f"(constraint (not (CFG.Sem g (CFG.Asp {nm} 0 (size (Pos {nm})) reset.S0))))")
    out.append("")
    out.append("(check-synth)")
    return "\n".join(out)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--data", required=True, help="Abbadingo input file")
    ap.add_argument("--k", type=int, required=True, help="Number of nonterminals")
    ap.add_argument("--max-len-pos", type=int, default=8, help="Max length for positives")
    ap.add_argument("--neg-cap", type=int, default=100, help="Cap on negatives (shortest first)")
    ap.add_argument("--out", required=True, help="Output .sl path")
    args = ap.parse_args()

    pos, neg = read_abbadingo(Path(args.data))
    pos_sel, neg_sel = sample(pos, neg, args.max_len_pos, args.neg_cap)
    alphabet = alphabet_of(pos_sel + neg_sel)
    text = emit(args.k, pos_sel, neg_sel, alphabet, source=os.path.basename(args.data))
    Path(args.out).write_text(text)
    print(f"wrote {args.out}: {len(pos_sel)} pos + {len(neg_sel)} neg, alphabet={alphabet}")


if __name__ == "__main__":
    main()
