#!/usr/bin/env python3
"""Generate Delis .sl benchmark files from SyGuS SLIA string-transformation benchmarks.

Converts a SyGuS SLIA file (FlashFill-style string synthesis) into a Delis
finite-model .sl file using the FACET value-checking encoding.

Encoding:

  * Each constraint becomes one model.  Per model we have THREE sorts:
    - PosIn  : positions in the concatenation of input args
    - PosOut : positions in the output string
    - Char   : alphabet (only the chars appearing in this model)
  * Per-position character tables: in_char(PosIn) → Char and out_char(PosOut) → Char.
  * Per-arg precomputed match tables:
    - arg_i_in_at(PosIn, PosIn)   : true exactly at arg_i's range in input
    - arg_i_out_at(PosOut, PosOut): true wherever arg_i's text appears in output
  * Two semantic relations on Str:
    - Str.SemIn (e, AspIn(model, lo, hi))   : e evaluates to input[lo:hi]
    - Str.SemOut(e, AspOut(model, lo, hi))  : e evaluates to output[lo:hi]
  * The constraint pins Str.SemOut at the full output range.
  * Operators:
    - str.++, str.replace, bool.prefixof/suffixof/contains, int.indexof
      use SAME-SIDE encoding (both arguments share the result's side).
    - str.at, str.substr use CROSS-SIDE: the inner Str sub-expression may be
      represented on either side, char equality goes via in_char / out_char.
  * No substr_match table — char equality is `(= (X_char p1) (Y_char p2))`,
    with forall over j ∈ [0, len) for multi-character matches.
  * No SymInt: positions/lengths are plain Int.  `int.neg1` is encoded as
    false in this first cut (needed only for str.indexof "not found", which
    is also stubbed).
"""
import argparse
import re
import sys
from pathlib import Path


# ===========================================================================
# SyGuS parsing (unchanged)
# ===========================================================================

def parse_sygus(path: Path):
    text = path.read_text()

    m = re.search(r'\(synth-fun\s+\w+\s*\(((?:\([^)]*\)\s*)*)\)', text)
    if not m:
        raise ValueError(f"no synth-fun in {path}")
    args_str = m.group(1).strip()
    arg_names = re.findall(r'\((\w+)\s+String\)', args_str)
    n_args = len(arg_names)

    m2 = re.search(r'ntString\s+String\s*\(([^)]*(?:\([^)]*\))*[^)]*)\)', text, re.DOTALL)
    constants = []
    if m2:
        grammar_body = m2.group(1)
        for s in re.findall(r'"((?:[^"\\]|\\.)*)"', grammar_body):
            u = unescape_str(s)
            if u not in arg_names:
                constants.append(u)

    constraints = []
    for cm in re.finditer(
        r'\(constraint\s+\(=\s+\(f\s+(.*?)\)\s+"((?:[^"\\]|\\.)*)"\s*\)\s*\)',
        text, re.DOTALL,
    ):
        args_part = cm.group(1)
        out = unescape_str(cm.group(2))
        inputs = [unescape_str(s) for s in re.findall(r'"((?:[^"\\]|\\.)*)"', args_part)]
        constraints.append((inputs, out))

    seen = set()
    deduped = []
    for c in constraints:
        key = (tuple(c[0]), c[1])
        if key not in seen:
            seen.add(key)
            deduped.append(c)

    return n_args, constants, deduped


def unescape_str(s: str) -> str:
    return (s
            .replace('\\\\', '\x00')
            .replace('\\"', '"')
            .replace('\\n', '\n')
            .replace('\\t', '\t')
            .replace('\x00', '\\'))


# ===========================================================================
# Naming helpers
# ===========================================================================

def char_univ_name(c: str) -> str:
    """Universe element name for a character — must be a valid Delis symbol."""
    if c.isalnum() and ord(c) < 128:
        return f'c.{c}'
    return f'c.x{ord(c):02X}'


def pos_elem(i: int) -> str:
    return f'${i}'


# ===========================================================================
# Per-model build
# ===========================================================================

def build_model(idx, inputs, output):
    in_text = ''.join(inputs)
    in_arg_ranges = []
    pos = 0
    for inp in inputs:
        in_arg_ranges.append((pos, pos + len(inp)))
        pos += len(inp)

    out_arg_matches = []
    for inp in inputs:
        matches = []
        if inp:
            start = 0
            while True:
                k = output.find(inp, start)
                if k < 0:
                    break
                matches.append((k, k + len(inp)))
                start = k + 1
        out_arg_matches.append(matches)

    chars = sorted(set(in_text + output))
    return {
        'name': f'm{idx}',
        'in_text': in_text,
        'in_arg_ranges': in_arg_ranges,
        'out_text': output,
        'out_arg_matches': out_arg_matches,
        'chars': chars,
        'in_size': len(in_text),
        'out_size': len(output),
    }


# ===========================================================================
# Emission
# ===========================================================================

def emit(n_args, constants, constraints, source_tag=None):
    models = [build_model(i, inps, out) for i, (inps, out) in enumerate(constraints)]

    out = []
    out.append("; Generated by gen.py — dual-side (PosIn/PosOut) FACET encoding for SLIA")
    out.append(f"; {n_args} args, {len(constants)} consts, {len(constraints)} constraints")
    if source_tag is not None:
        out.append(f'(set-info :source "{source_tag}")')
    out.append("(set-logic ALL)")
    out.append("")

    # ---- term types --------------------------------------------------------
    str_nullaries = [f"(str.c{i})" for i in range(len(constants))]
    for i in range(n_args):
        str_nullaries.append(f"(str.arg{i})")
    str_nary = [
        "(str.++ Str Str)",
        "(str.replace Str Str Str)",
        "(str.at Str SInt)",
        "(str.int2str SInt)",
        "(str.ite SBool Str Str)",
        "(str.substr Str SInt SInt)",
    ]
    int_terms = [
        "(int.0)", "(int.1)", "(int.neg1)",
        "(int.+ SInt SInt)", "(int.- SInt SInt)",
        "(int.len Str)", "(int.to_int Str)",
        "(int.ite SBool SInt SInt)", "(int.indexof Str Str SInt)",
    ]
    bool_terms = [
        "(bool.true)", "(bool.false)",
        "(bool.= SInt SInt)",
        "(bool.prefixof Str Str)", "(bool.suffixof Str Str)",
        "(bool.contains Str Str)",
    ]
    out.append("(declare-term-types")
    out.append(" ((Str 0) (SInt 0) (SBool 0))")
    out.append(" (")
    out.append("   (" + " ".join(str_nullaries + str_nary) + ")")
    out.append("   (" + " ".join(int_terms) + ")")
    out.append("   (" + " ".join(bool_terms) + ")")
    out.append(" )")
    out.append(")")
    out.append("")

    # ---- declarations ------------------------------------------------------
    out.append("(declare-sort PosIn 0)")
    out.append("(declare-sort PosOut 0)")
    out.append("(declare-sort Char 0)")
    out.append("")
    out.append("(declare-fun in_char  (PosIn)  Char)")
    out.append("(declare-fun out_char (PosOut) Char)")
    out.append("")
    for i in range(n_args):
        out.append(f"(declare-fun arg{i}_in_at  (PosIn  PosIn)  Bool)")
        out.append(f"(declare-fun arg{i}_out_at (PosOut PosOut) Bool)")
    for i in range(len(constants)):
        out.append(f"(declare-fun c{i}_in_at  (PosIn  PosIn)  Bool)")
        out.append(f"(declare-fun c{i}_out_at (PosOut PosOut) Bool)")
    out.append("")

    # ---- aspects -----------------------------------------------------------
    # Bound int_bound = max(in_size, out_size).
    max_int = max((m['in_size'] for m in models), default=0)
    max_int = max(max_int, max((m['out_size'] for m in models), default=0))
    max_int = max(max_int, 1)

    out.append("(define-finite Str.AspIn")
    out.append("  (record (model Model) (lo Int) (hi Int))")
    out.append("  :where (and (<= 0 lo) (<= lo hi) (<= hi (- (size (PosIn model)) 1))))")
    out.append("")
    out.append("(define-finite Str.AspOut")
    out.append("  (record (model Model) (lo Int) (hi Int))")
    out.append("  :where (and (<= 0 lo) (<= lo hi) (<= hi (- (size (PosOut model)) 1))))")
    out.append("")
    # Int.Asp val is bounded per-model by max(in_size, out_size).
    out.append(f"(define-finite Int.Asp")
    out.append(f"  (record (model Model) (val Int))")
    out.append(f"  :where (and (<= 0 val)")
    out.append(f"              (or (<= val (- (size (PosIn  model)) 1))")
    out.append(f"                  (<= val (- (size (PosOut model)) 1)))))")
    out.append("")
    out.append("(define-finite Bool.Asp (record (model Model)))")
    out.append("")

    # SIDES = (tag, AspName, RelName, char_fn, size_expr)
    # PosIn/PosOut universes include a $end sentinel at index size, so
    # (size (PosIn model)) = real_in_size + 1.  We use real_in_size for
    # the int-range bounds (k, slo, shi values that index chars), so that
    # `(- size 1)` is the correct upper bound on positions.
    SIDES = [
        ('In',  'AspIn',  'Str.SemIn',  'in_char',  '(- (size (PosIn (model asp))) 1)'),
        ('Out', 'AspOut', 'Str.SemOut', 'out_char', '(- (size (PosOut (model asp))) 1)'),
    ]

    def str_sem_body(side_tag, asp_name, rel_name, char_fn, size_expr):
        cases = []
        # constants — only really meaningful for SemOut where their text may appear
        for i in range(len(constants)):
            cases.append(f"     ((str.c{i}) (c{i}_{side_tag.lower()}_at (lo asp) (hi asp)))")
        # args
        for i in range(n_args):
            cases.append(
                f"     ((str.arg{i}) (arg{i}_{side_tag.lower()}_at (lo asp) (hi asp)))")

        # str.++ (same-side)
        cases.append(
            f"     ((str.++ x y)\n"
            f"      (exists ((mid (int-range (lo asp) (hi asp))))\n"
            f"        (and ({rel_name} x (Str.{asp_name} (model asp) (lo asp) mid))\n"
            f"             ({rel_name} y (Str.{asp_name} (model asp) mid (hi asp))))))")

        # str.replace — placeholder
        cases.append("     ((str.replace x y z) false)")

        # str.at — CROSS-SIDE: x's value may live in input or output
        at_disjuncts = []
        for x_side, x_asp, x_rel, x_char, x_size_expr in SIDES:
            at_disjuncts.append(
                f"        (exists ((slo (int-range 0 {x_size_expr})))\n"
                f"          (exists ((shi (int-range slo {x_size_expr})))\n"
                f"            (exists ((k (int-range 0 {x_size_expr})))\n"
                f"              (and ({x_rel} x (Str.{x_asp} (model asp) slo shi))\n"
                f"                   (Int.Sem i (Int.Asp (model asp) k))\n"
                f"                   (<= (+ k 1) (- shi slo))\n"
                f"                   (= ({char_fn} (lo asp))\n"
                f"                      ({x_char} (+ slo k)))))))")
        cases.append(
            f"     ((str.at x i)\n"
            f"      (and (= (hi asp) (+ (lo asp) 1))\n"
            f"           (or\n" + "\n".join(at_disjuncts) + ")))")

        # str.substr — CROSS-SIDE
        substr_disjuncts = []
        for x_side, x_asp, x_rel, x_char, x_size_expr in SIDES:
            substr_disjuncts.append(
                f"        (exists ((slo (int-range 0 {x_size_expr})))\n"
                f"          (exists ((shi (int-range slo {x_size_expr})))\n"
                f"            (exists ((k (int-range 0 {x_size_expr})))\n"
                f"              (and ({x_rel} x (Str.{x_asp} (model asp) slo shi))\n"
                f"                   (Int.Sem i (Int.Asp (model asp) k))\n"
                f"                   (Int.Sem len (Int.Asp (model asp) (- (hi asp) (lo asp))))\n"
                f"                   (<= (+ k (- (hi asp) (lo asp))) (- shi slo))\n"
                f"                   (forall ((j (int-range 0 (- (hi asp) (lo asp)))))\n"
                f"                     (= ({char_fn} (+ (lo asp) j))\n"
                f"                        ({x_char} (+ slo (+ k j)))))))))")
        cases.append(
            f"     ((str.substr x i len)\n"
            f"      (or\n" + "\n".join(substr_disjuncts) + "))")

        # str.ite
        cases.append(
            f"     ((str.ite b x y)\n"
            f"      (or (and (Bool.Sem b (Bool.Asp (model asp))) ({rel_name} x asp))\n"
            f"          (and (not (Bool.Sem b (Bool.Asp (model asp)))) ({rel_name} y asp))))")

        cases.append("     ((str.int2str i) false)")

        return "\n".join(cases)

    out.append("(define-semantics")
    out.append("  ((Str.SemIn (e Str) (asp Str.AspIn)))")
    out.append("  ((match e")
    out.append(str_sem_body(*SIDES[0]))
    out.append("  )))")
    out.append("")
    out.append("(define-semantics")
    out.append("  ((Str.SemOut (e Str) (asp Str.AspOut)))")
    out.append("  ((match e")
    out.append(str_sem_body(*SIDES[1]))
    out.append("  )))")
    out.append("")

    # ---- Int.Sem -----------------------------------------------------------
    ic = []
    ic.append("     ((int.0)    (= (val asp) 0))")
    ic.append("     ((int.1)    (= (val asp) 1))")
    ic.append("     ((int.neg1) false)")  # not representable; used only for str.indexof not-found

    # Use per-model max to avoid asking for Int.Sem(model, val=N) where N
    # exceeds this model's int_bound.  We split into two exists, one per
    # side, to cover val ≤ max(in_size, out_size).
    in_max_expr  = "(- (size (PosIn (model asp))) 1)"
    out_max_expr = "(- (size (PosOut (model asp))) 1)"
    ic.append(
        f"     ((int.+ x y)\n"
        f"      (or\n"
        f"        (exists ((a (int-range 0 {in_max_expr})))\n"
        f"          (exists ((b (int-range 0 {in_max_expr})))\n"
        f"            (and (Int.Sem x (Int.Asp (model asp) a))\n"
        f"                 (Int.Sem y (Int.Asp (model asp) b))\n"
        f"                 (= (val asp) (+ a b)))))\n"
        f"        (exists ((a (int-range 0 {out_max_expr})))\n"
        f"          (exists ((b (int-range 0 {out_max_expr})))\n"
        f"            (and (Int.Sem x (Int.Asp (model asp) a))\n"
        f"                 (Int.Sem y (Int.Asp (model asp) b))\n"
        f"                 (= (val asp) (+ a b)))))))")
    ic.append(
        f"     ((int.- x y)\n"
        f"      (or\n"
        f"        (exists ((a (int-range 0 {in_max_expr})))\n"
        f"          (exists ((b (int-range 0 a)))\n"
        f"            (and (Int.Sem x (Int.Asp (model asp) a))\n"
        f"                 (Int.Sem y (Int.Asp (model asp) b))\n"
        f"                 (= (val asp) (- a b)))))\n"
        f"        (exists ((a (int-range 0 {out_max_expr})))\n"
        f"          (exists ((b (int-range 0 a)))\n"
        f"            (and (Int.Sem x (Int.Asp (model asp) a))\n"
        f"                 (Int.Sem y (Int.Asp (model asp) b))\n"
        f"                 (= (val asp) (- a b)))))))")

    # int.len x — over either side
    ic.append(
        f"     ((int.len x)\n"
        f"      (or\n"
        f"        (exists ((slo (int-range 0 (- (size (PosIn (model asp))) 1))))\n"
        f"          (exists ((shi (int-range slo (- (size (PosIn (model asp))) 1))))\n"
        f"            (and (Str.SemIn x (Str.AspIn (model asp) slo shi))\n"
        f"                 (= (val asp) (- shi slo)))))\n"
        f"        (exists ((slo (int-range 0 (- (size (PosOut (model asp))) 1))))\n"
        f"          (exists ((shi (int-range slo (- (size (PosOut (model asp))) 1))))\n"
        f"            (and (Str.SemOut x (Str.AspOut (model asp) slo shi))\n"
        f"                 (= (val asp) (- shi slo)))))))")

    ic.append("     ((int.to_int x) false)")

    ic.append(
        f"     ((int.ite b x y)\n"
        f"      (or (and (Bool.Sem b (Bool.Asp (model asp))) (Int.Sem x asp))\n"
        f"          (and (not (Bool.Sem b (Bool.Asp (model asp)))) (Int.Sem y asp))))")

    ic.append("     ((int.indexof x y k) false)")

    out.append("(define-semantics")
    out.append("  ((Int.Sem (e SInt) (asp Int.Asp)))")
    out.append("  ((match e")
    out.append("\n".join(ic))
    out.append("  )))")
    out.append("")

    # ---- Bool.Sem ----------------------------------------------------------
    bc = []
    bc.append("     ((bool.true)  true)")
    bc.append("     ((bool.false) false)")
    bc.append(
        f"     ((bool.= x y)\n"
        f"      (or\n"
        f"        (exists ((v (int-range 0 {in_max_expr})))\n"
        f"          (and (Int.Sem x (Int.Asp (model asp) v))\n"
        f"               (Int.Sem y (Int.Asp (model asp) v))))\n"
        f"        (exists ((v (int-range 0 {out_max_expr})))\n"
        f"          (and (Int.Sem x (Int.Asp (model asp) v))\n"
        f"               (Int.Sem y (Int.Asp (model asp) v))))))")

    def bool_string_pred(name, body_per_side):
        disjuncts = []
        for side_tag, asp_name, rel_name, char_fn, size_expr in SIDES:
            disjuncts.append(body_per_side(side_tag, asp_name, rel_name, char_fn, size_expr))
        return f"     ({name}\n      (or\n" + "\n".join(disjuncts) + "))"

    def prefix_body(side_tag, asp_name, rel_name, char_fn, size_expr):
        return (
            f"        (exists ((xlo (int-range 0 {size_expr})))\n"
            f"          (exists ((xhi (int-range xlo {size_expr})))\n"
            f"            (exists ((ylo (int-range 0 {size_expr})))\n"
            f"              (exists ((yhi (int-range ylo {size_expr})))\n"
            f"                (and ({rel_name} x (Str.{asp_name} (model asp) xlo xhi))\n"
            f"                     ({rel_name} y (Str.{asp_name} (model asp) ylo yhi))\n"
            f"                     (<= (- xhi xlo) (- yhi ylo))\n"
            f"                     (forall ((j (int-range 0 (- xhi xlo))))\n"
            f"                       (= ({char_fn} (+ xlo j)) ({char_fn} (+ ylo j)))))))))")
    bc.append(bool_string_pred("(bool.prefixof x y)", prefix_body))

    def suffix_body(side_tag, asp_name, rel_name, char_fn, size_expr):
        return (
            f"        (exists ((xlo (int-range 0 {size_expr})))\n"
            f"          (exists ((xhi (int-range xlo {size_expr})))\n"
            f"            (exists ((ylo (int-range 0 {size_expr})))\n"
            f"              (exists ((yhi (int-range ylo {size_expr})))\n"
            f"                (and ({rel_name} x (Str.{asp_name} (model asp) xlo xhi))\n"
            f"                     ({rel_name} y (Str.{asp_name} (model asp) ylo yhi))\n"
            f"                     (<= (- xhi xlo) (- yhi ylo))\n"
            f"                     (forall ((j (int-range 0 (- xhi xlo))))\n"
            f"                       (= ({char_fn} (+ xlo j))\n"
            f"                          ({char_fn} (+ ylo (+ j (- (- yhi ylo) (- xhi xlo))))))))))))")
    bc.append(bool_string_pred("(bool.suffixof x y)", suffix_body))

    def contains_body(side_tag, asp_name, rel_name, char_fn, size_expr):
        return (
            f"        (exists ((xlo (int-range 0 {size_expr})))\n"
            f"          (exists ((xhi (int-range xlo {size_expr})))\n"
            f"            (exists ((ylo (int-range 0 {size_expr})))\n"
            f"              (exists ((yhi (int-range ylo {size_expr})))\n"
            f"                (exists ((k (int-range 0 {size_expr})))\n"
            f"                  (and ({rel_name} x (Str.{asp_name} (model asp) xlo xhi))\n"
            f"                       ({rel_name} y (Str.{asp_name} (model asp) ylo yhi))\n"
            f"                       (<= (+ k (- yhi ylo)) (- xhi xlo))\n"
            f"                       (forall ((j (int-range 0 (- yhi ylo))))\n"
            f"                         (= ({char_fn} (+ xlo (+ k j)))\n"
            f"                            ({char_fn} (+ ylo j))))))))))")
    bc.append(bool_string_pred("(bool.contains x y)", contains_body))

    out.append("(define-semantics")
    out.append("  ((Bool.Sem (e SBool) (asp Bool.Asp)))")
    out.append("  ((match e")
    out.append("\n".join(bc))
    out.append("  )))")
    out.append("")

    # ---- Per-model definitions --------------------------------------------
    for m in models:
        out.extend(emit_model(m, constants))

    # ---- synth + constraints ----------------------------------------------
    out.append("(synth-fun phi () Str)")
    out.append("")
    for m in models:
        out_size = m['out_size']
        out.append(
            f"(constraint (Str.SemOut phi (Str.AspOut {m['name']} 0 {out_size})))")
    out.append("")
    out.append("(check-synth)")

    return "\n".join(out)


# ===========================================================================
# Model emission
# ===========================================================================

def emit_model(m, constants):
    """Per-model definitions.  PosIn/PosOut universes include a sentinel `$end`
    at index `size`, so aspects with `hi == size` auto-convert to a real Pos
    element.  Char `c.empty` is added for the rare empty-tape case."""
    lines = []
    name = m['name']
    in_text = m['in_text']
    out_text = m['out_text']
    chars = m['chars']
    in_size = m['in_size']
    out_size = m['out_size']

    def pos_at(i, size):
        """Pos universe element name for index i ∈ [0, size]; size maps to $end."""
        return '$end' if i >= size else pos_elem(i)

    pos_in_elems = " ".join(pos_elem(i) for i in range(in_size)) + " $end"
    pos_out_elems = " ".join(pos_elem(i) for i in range(out_size)) + " $end"
    char_set = chars if chars else ['?']
    char_elems = " ".join(char_univ_name(c) for c in char_set)
    # Add a placeholder char value for the $end position (never accessed for
    # char_at in well-formed aspects, but interp-fun match needs a value).
    placeholder_char = char_univ_name(char_set[0])

    lines.append(f"(define-model {name}")
    lines.append(f"  (define-univ PosIn  ({pos_in_elems}))")
    lines.append(f"  (define-univ PosOut ({pos_out_elems}))")
    lines.append(f"  (define-univ Char   ({char_elems}))")

    in_clauses = [f"(({pos_elem(i)}) {char_univ_name(in_text[i])})"
                  for i in range(in_size)]
    in_clauses.append(f"(($end) {placeholder_char})")
    lines.append(f"  (interp-fun in_char (match (\n    " + "\n    ".join(in_clauses) + ")))")

    out_clauses = [f"(({pos_elem(i)}) {char_univ_name(out_text[i])})"
                   for i in range(out_size)]
    out_clauses.append(f"(($end) {placeholder_char})")
    lines.append(f"  (interp-fun out_char (match (\n    " + "\n    ".join(out_clauses) + ")))")

    # arg_i_in_at — single (lo, hi) per arg.  Aspects allow hi == in_size,
    # which we encode as $end.
    for i, (lo, hi) in enumerate(m['in_arg_ranges']):
        cases = [f"(({pos_at(lo, in_size)} {pos_at(hi, in_size)}) true)",
                 "((_ _) false)"]
        lines.append(f"  (interp-fun arg{i}_in_at (match (\n    " + "\n    ".join(cases) + ")))")

    for i, matches in enumerate(m['out_arg_matches']):
        cases = [f"(({pos_at(lo, out_size)} {pos_at(hi, out_size)}) true)"
                 for lo, hi in matches]
        cases.append("((_ _) false)")
        lines.append(f"  (interp-fun arg{i}_out_at (match (\n    " + "\n    ".join(cases) + ")))")

    for i, c in enumerate(constants):
        # input-side appearances
        in_matches = []
        if c:
            start = 0
            while True:
                k = in_text.find(c, start)
                if k < 0:
                    break
                in_matches.append((k, k + len(c)))
                start = k + 1
        cases = [f"(({pos_at(lo, in_size)} {pos_at(hi, in_size)}) true)"
                 for lo, hi in in_matches]
        cases.append("((_ _) false)")
        lines.append(f"  (interp-fun c{i}_in_at (match (\n    " + "\n    ".join(cases) + ")))")

        out_matches = []
        if c:
            start = 0
            while True:
                k = out_text.find(c, start)
                if k < 0:
                    break
                out_matches.append((k, k + len(c)))
                start = k + 1
        cases = [f"(({pos_at(lo, out_size)} {pos_at(hi, out_size)}) true)"
                 for lo, hi in out_matches]
        cases.append("((_ _) false)")
        lines.append(f"  (interp-fun c{i}_out_at (match (\n    " + "\n    ".join(cases) + ")))")

    lines.append(")")
    lines.append("")
    return lines


# ===========================================================================
# CLI
# ===========================================================================

def main():
    ap = argparse.ArgumentParser(description="Convert SyGuS SLIA to Delis .sl")
    ap.add_argument("--input", required=True)
    ap.add_argument("--output", required=True)
    ap.add_argument("--source", default=None)
    args = ap.parse_args()

    path = Path(args.input)
    n_args, constants, constraints = parse_sygus(path)

    if not constraints:
        print(f"warning: no constraints in {path}", file=sys.stderr)
        return

    src = args.source if args.source is not None else path.name
    in_max = max((len(s) for inps, _ in constraints for s in inps), default=0)
    out_max = max((len(o) for _, o in constraints), default=0)
    print(f"{path.name}: {n_args} args, {len(constants)} consts, "
          f"{len(constraints)} constraints, in_max={in_max}, out_max={out_max}")

    text = emit(n_args, constants, constraints, source_tag=src)
    Path(args.output).write_text(text)


if __name__ == "__main__":
    main()
