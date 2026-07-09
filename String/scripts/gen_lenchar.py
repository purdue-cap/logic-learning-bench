#!/usr/bin/env python3
"""Generate Delis .sl files from SyGuS SLIA benchmarks using the (Len,Char)
value-semantics encoding (term synthesis, not membership).

A Str program denotes a *value*: its length (Idx) and its char at each
position (Chr).  Relations:
    Str.Len  : Str -> Idx
    Str.Char : (Str, k:Idx) -> Chr
    SInt.Sem : SInt -> Idx
    SBool.Sem: SBool -> Bool
    Str.OutEq: Str -> Bool        (t = out; inlined per constructor)

Key invariant: a `CharAsp` index must be GROUND at compile time (it selects
a precomputed bit).  Child string lengths and SInt values are synth-dependent,
so any index built from them is ENUMERATED over 0..L via ite-cascades on the
finite Idx universe.  Return-position plus/minus/lt.idx with synth arguments
are fine (the compiler enumerates matching model tuples).

Idx universe is $0..$L plus $bot (undefined / overflow / not-found sentinel),
L = max example max(|inputs|,|output|) + slack.  Length ops saturate to $bot,
which never equals a real out.len, so any L is SOUND; slack only affects
completeness.  indexof "not found" is idx.neg1, interpreted as $bot.

Discipline: bodies mention only declared signature symbols (idx.*, chr.*
constants and model functions), never raw universe elements.

Grammar (constructor names) is identical to the membership gen.py.
"""
import argparse
import re
import sys
from pathlib import Path


# ===========================================================================
# SyGuS parsing
# ===========================================================================

def parse_sygus(path: Path):
    text = path.read_text()
    m = re.search(r'\(synth-fun\s+\w+\s*\(((?:\([^)]*\)\s*)*)\)', text)
    if not m:
        raise ValueError(f"no synth-fun in {path}")
    arg_names = re.findall(r'\((\w+)\s+String\)', m.group(1).strip())
    n_args = len(arg_names)

    m2 = re.search(r'ntString\s+String\s*\(([^)]*(?:\([^)]*\))*[^)]*)\)', text, re.DOTALL)
    constants = []
    if m2:
        for s in re.findall(r'"((?:[^"\\]|\\.)*)"', m2.group(1)):
            u = unescape_str(s)
            if u not in arg_names:
                constants.append(u)

    constraints = []
    for cm in re.finditer(
        r'\(constraint\s+\(=\s+\(f\s+(.*?)\)\s+"((?:[^"\\]|\\.)*)"\s*\)\s*\)',
        text, re.DOTALL,
    ):
        out = unescape_str(cm.group(2))
        inputs = [unescape_str(s) for s in re.findall(r'"((?:[^"\\]|\\.)*)"', cm.group(1))]
        constraints.append((inputs, out))

    seen, deduped = set(), []
    for c in constraints:
        key = (tuple(c[0]), c[1])
        if key not in seen:
            seen.add(key)
            deduped.append(c)
    return n_args, constants, deduped


def unescape_str(s: str) -> str:
    return (s.replace('\\\\', '\x00').replace('\\"', '"')
             .replace('\\n', '\n').replace('\\t', '\t').replace('\x00', '\\'))


# ===========================================================================
# Naming
# ===========================================================================

def char_univ_name(c: str) -> str:
    if c.isalnum() and ord(c) < 128:
        return f'c.{c}'
    return f'c.x{ord(c):02X}'


def chr_const(c: str) -> str:
    """Declared Chr-constant name for a character referenced inside a semantic
    body (digits from int2str / to_int). Bodies may mention only declared
    signature symbols, so we use these constants instead of raw element names."""
    if c.isdigit():
        return f'chr.d{c}'
    return f'chr.k{ord(c):02X}'


PAD = 'c.pad'
BOT = '$bot'


def idx_e(i: int) -> str:
    return f'${i}'


def string_axioms():
    """Conservative algebraic laws used by the enumerator for pruning.

    Keep these to equations that are valid for both real String semantics and
    this finite Len/Char encoding.  In particular, avoid laws for operators
    that are currently stubbed or intentionally approximate in some String
    encodings, such as replace.
    """
    lines = [
        "; Canonical String algebraic axioms for pruning.",
        "(declare-axiom (= (str.++ (str.++ x y) z) (str.++ x (str.++ y z))))",
        "(declare-axiom (= (str.ite bool.true x y) x))",
        "(declare-axiom (= (str.ite bool.false x y) y))",
        "(declare-axiom (= (str.ite b x x) x))",
        "(declare-axiom (= (int.+ x y) (int.+ y x)))",
        "(declare-axiom (= (int.+ (int.+ x y) z) (int.+ x (int.+ y z))))",
        "(declare-axiom (= (int.+ int.0 x) x))",
        "(declare-axiom (= (int.+ x int.0) x))",
        "(declare-axiom (= (int.- x int.0) x))",
        "(declare-axiom (= (int.ite bool.true x y) x))",
        "(declare-axiom (= (int.ite bool.false x y) y))",
        "(declare-axiom (= (int.ite b x x) x))",
        "(declare-axiom (= (bool.= x y) (bool.= y x)))",
    ]
    return lines


# ===========================================================================
# Enumeration helpers (the core mechanism)
# ===========================================================================

def enum_idx(idx_expr, per_value, L, default):
    """ite-cascade: for j in 0..L, if idx_expr == idx.j then per_value(j) else
    default.  `idx_expr` is an Idx-valued expression in the current aspect."""
    expr = default
    for j in range(L, -1, -1):
        expr = f"(ite (= {idx_expr} idx.{j}) {per_value(j)} {expr})"
    return expr


# ---- Str.Char bodies -------------------------------------------------------

def char_concat(L):
    """(str.++ x y): k-th char, enumerating ell=Len(x) so each child index is
    a ground constant."""
    expr = "chr.pad"
    for ell in range(L, -1, -1):
        if ell == 0:
            branch = "(Str.Char y asp)"
        else:
            branch = (f"(ite (lt.idx (k asp) idx.{ell}) (Str.Char x asp)"
                      f" (Str.Char y (CharAsp (model asp) (minus.idx (k asp) idx.{ell}))))")
        expr = f"(ite (= (Str.Len x (ExAsp (model asp))) idx.{ell}) {branch} {expr})"
    return expr


def char_at(L):
    """(str.at x i): single char at position SInt.Sem(i); only k=0 nonempty."""
    inner = enum_idx(
        "(SInt.Sem i (ExAsp (model asp)))",
        lambda j: f"(Str.Char x (CharAsp (model asp) idx.{j}))",
        L, "chr.pad")
    return f"(ite (= (k asp) idx.0) {inner} chr.pad)"


def char_substr(L):
    """(str.substr x i n): char at position i+k of x, for k < n."""
    # enumerate i_val=j; index into x is j + current_k (both ground).
    take = enum_idx(
        "(SInt.Sem i (ExAsp (model asp)))",
        lambda j: f"(Str.Char x (CharAsp (model asp) (plus.idx idx.{j} (k asp))))",
        L, "chr.pad")
    return (f"(ite (lt.idx (k asp) (SInt.Sem n (ExAsp (model asp)))) {take} chr.pad)")


def char_replace(L):
    """(str.replace x y z): replace first occurrence of y in x by z.
    p = position of first match (enumerated); result char at k:
      k < p          -> Char(x,k)
      p <= k < p+|z| -> Char(z,k-p)
      else           -> Char(x, k-|z|+|y|)."""
    # p = first-match position over x of y (a value); enumerate p.
    p_expr = f"(IndexOfFirst x y (ExAsp (model asp)))"
    def per_p(p):
        # within branch p (ground): regions over ground k.
        # k < p: from x at k. else need |z|,|y| (synth) -> enumerate |z|.
        lz_expr = "(Str.Len z (ExAsp (model asp)))"
        def per_lz(lz):
            # p <= k < p+lz -> Char(z, k-p); else Char(x, k - lz + |y|)
            # k-p, k-lz+|y| : need |y| (synth) -> enumerate |y|.
            ly_expr = "(Str.Len y (ExAsp (model asp)))"
            def per_ly(ly):
                # all of p, lz, ly ground now; k ground.
                inq = (f"(ite (lt.idx (k asp) idx.{p}) (Str.Char x asp)"
                       f" (ite (lt.idx (k asp) (plus.idx idx.{p} idx.{lz}))"
                       f"      (Str.Char z (CharAsp (model asp) (minus.idx (k asp) idx.{p})))"
                       f"      (Str.Char x (CharAsp (model asp)"
                       f"         (plus.idx (minus.idx (k asp) idx.{lz}) idx.{ly})))))")
                return inq
            return enum_idx(ly_expr, per_ly, L, "chr.pad")
        return enum_idx(lz_expr, per_lz, L, "chr.pad")
    # if no match (p = neg1/bot), result is x unchanged.
    return enum_idx(p_expr, per_p, L, "(Str.Char x asp)")


def char_int2str(L):
    """(str.int2str i): decimal string of SInt.Sem(i) (bounded 0..L)."""
    def per_v(v):
        s = str(v)
        # char at k is digit s[k] if k<len(s) else pad.
        clauses = "chr.pad"
        for k in range(len(s) - 1, -1, -1):
            clauses = f"(ite (= (k asp) idx.{k}) {chr_const(s[k])} {clauses})"
        return clauses
    return enum_idx("(SInt.Sem i (ExAsp (model asp)))", per_v, L, "chr.pad")


# ---- Str.Len bodies --------------------------------------------------------

def len_at():
    return "(ite (lt.idx (SInt.Sem i asp) (Str.Len x asp)) idx.1 idx.0)"


def len_substr():
    # approx (sound): claimed length = n; out-of-range chars become pad and
    # fail OutEq, so only correct substrs are accepted.
    return "(SInt.Sem n asp)"


def len_replace(L):
    # |x| - |y| + |z| when matched, else |x|.
    return (f"(ite (= (IndexOfFirst x y asp) idx.neg1) (Str.Len x asp)"
            f" (plus.idx (minus.idx (Str.Len x asp) (Str.Len y asp)) (Str.Len z asp)))")


def len_int2str(L):
    return enum_idx("(SInt.Sem i asp)", lambda v: f"idx.{len(str(v))}", L, "idx.bot")


# ---- SInt bodies -----------------------------------------------------------

def sint_indexof(L):
    """(int.indexof x y k): least p >= SInt.Sem(k) with y matching x at p,
    else neg1."""
    start = "(SInt.Sem k asp)"
    expr = "idx.neg1"
    for p in range(L, -1, -1):
        cond = f"(and (not (lt.idx idx.{p} {start})) {match_at(p, L)})"
        expr = f"(ite {cond} idx.{p} {expr})"
    return expr


def sint_to_int(L):
    """(int.to_int x): value v in 0..L iff x is the decimal string of v."""
    expr = "idx.bot"
    for v in range(L, -1, -1):
        expr = f"(ite {str_equals_decimal(v)} idx.{v} {expr})"
    return expr


def str_equals_decimal(v):
    s = str(v)
    parts = [f"(= (Str.Len x asp) idx.{len(s)})"]
    for k, ch in enumerate(s):
        parts.append(f"(= (Str.Char x (CharAsp (model asp) idx.{k})) {chr_const(ch)})")
    return "(and " + " ".join(parts) + ")"


# ---- match predicate (shared by indexof / contains) ------------------------

def match_at(p, L):
    """y occurs in x starting at ground position p: p+|y| <= |x| and every
    j<|y| has Char(x,p+j)=Char(y,j)."""
    parts = [f"(not (lt.idx (Str.Len x asp) (plus.idx idx.{p} (Str.Len y asp))))"]
    for j in range(L + 1):
        if p + j > L:
            break
        cmp = (f"(= (Str.Char x (CharAsp (model asp) idx.{p + j}))"
               f" (Str.Char y (CharAsp (model asp) idx.{j})))")
        parts.append(f"(ite (lt.idx idx.{j} (Str.Len y asp)) {cmp} true)")
    return "(and " + " ".join(parts) + ")"


# ---- SBool bodies ----------------------------------------------------------

def bool_prefixof(L):
    parts = ["(not (lt.idx (Str.Len y asp) (Str.Len x asp)))"]
    for j in range(L + 1):
        cmp = (f"(= (Str.Char x (CharAsp (model asp) idx.{j}))"
               f" (Str.Char y (CharAsp (model asp) idx.{j})))")
        parts.append(f"(ite (lt.idx idx.{j} (Str.Len x asp)) {cmp} true)")
    return "(and " + " ".join(parts) + ")"


def bool_suffixof(L):
    # x suffix of y: Char(x,j) = Char(y, off+j), off = |y|-|x| (enumerate off).
    head = "(not (lt.idx (Str.Len y asp) (Str.Len x asp)))"
    def per_off(o):
        parts = []
        for j in range(L + 1):
            if o + j > L:
                break
            cmp = (f"(= (Str.Char x (CharAsp (model asp) idx.{j}))"
                   f" (Str.Char y (CharAsp (model asp) idx.{o + j})))")
            parts.append(f"(ite (lt.idx idx.{j} (Str.Len x asp)) {cmp} true)")
        return "(and " + " ".join(parts) + ")" if parts else "true"
    body = enum_idx("(minus.idx (Str.Len y asp) (Str.Len x asp))", per_off, L, "false")
    return f"(and {head} {body})"


def bool_contains(L):
    disj = []
    for p in range(L + 1):
        disj.append(match_at(p, L))
    return "(or " + " ".join(disj) + ")"


# ---- OutEq bodies ----------------------------------------------------------

def outeq_atom(fn, L):
    parts = [f"(= {fn}.len out.len)"]
    for k in range(L + 1):
        parts.append(f"(= ({fn}.chr idx.{k}) (out.chr idx.{k}))")
    return "(and " + " ".join(parts) + ")"


def outeq_concat(L):
    """OutEq for ++: may not call Str.Char on the scrutinee, so reconstruct
    each output position over the children x,y."""
    def char_k(kk):
        expr = "chr.pad"
        for ell in range(L, -1, -1):
            if kk < ell:
                branch = f"(Str.Char x (CharAsp (model asp) idx.{kk}))"
            else:
                branch = f"(Str.Char y (CharAsp (model asp) idx.{kk - ell}))"
            expr = f"(ite (= (Str.Len x asp) idx.{ell}) {branch} {expr})"
        return expr
    parts = ["(= (plus.idx (Str.Len x asp) (Str.Len y asp)) out.len)"]
    for k in range(L + 1):
        parts.append(f"(= {char_k(k)} (out.chr idx.{k}))")
    return "(and " + " ".join(parts) + ")"


def outeq_generic(len_body, char_body_fn, L):
    """Generic OutEq for an operator whose Str.Len/Str.Char are already defined
    over children: assert Len(e)=out.len and Char(e,k)=out.chr(k) for all k,
    by re-emitting the operator's own (Len,Char) bodies (which only touch
    children, never the scrutinee)."""
    parts = [f"(= {len_body} out.len)"]
    for k in range(L + 1):
        parts.append(f"(= {char_body_fn(k)} (out.chr idx.{k}))")
    return "(and " + " ".join(parts) + ")"


# ===========================================================================
# Model build
# ===========================================================================

def build_model(idx, inputs, output, constants, need_digits):
    chars = set(''.join(inputs) + output)
    for c in constants:
        chars |= set(c)
    if need_digits:
        chars |= set('0123456789')
    return {
        'name': f'm{idx}',
        'inputs': inputs,
        'output': output,
        'out_len': len(output),
        'chars': sorted(chars),
    }


# ===========================================================================
# Emission
# ===========================================================================

def emit(n_args, constants, constraints, slack=0, source_tag=None):
    # digit chars are needed if to_int / int2str could appear (grammar always
    # has them), so include digits in every model's alphabet.
    need_digits = True
    models = [build_model(i, inps, out, constants, need_digits)
              for i, (inps, out) in enumerate(constraints)]

    L = 1
    for inps, out in constraints:
        L = max(L, sum(len(s) for s in inps), len(out))
    L += slack

    o = []
    o.append("; Generated by gen_lenchar.py — (Len,Char) value-semantics encoding")
    o.append(f"; {n_args} args, {len(constants)} consts, {len(constraints)} models, L={L}")
    if source_tag is not None:
        o.append(f'(set-info :source "{source_tag}")')
    o.append("")
    o.append("")

    # ---- term types (names identical to membership encoding) ---------------
    str_nullaries = [f"(str.c{i})" for i in range(len(constants))]
    for i in range(n_args):
        str_nullaries.append(f"(arg{i})")
    str_nary = ["(str.++ Str Str)", "(str.replace Str Str Str)", "(str.at Str SInt)",
                "(str.int2str SInt)", "(str.ite SBool Str Str)", "(str.substr Str SInt SInt)"]
    int_terms = ["(int.0)", "(int.1)", "(int.neg1)", "(int.+ SInt SInt)", "(int.- SInt SInt)",
                 "(int.len Str)", "(int.to_int Str)", "(int.ite SBool SInt SInt)",
                 "(int.indexof Str Str SInt)"]
    bool_terms = ["(bool.true)", "(bool.false)", "(bool.= SInt SInt)",
                  "(bool.prefixof Str Str)", "(bool.suffixof Str Str)", "(bool.contains Str Str)"]
    o.append("(declare-term-types")
    o.append(" ((Str 0) (SInt 0) (SBool 0))")
    o.append(" (")
    o.append("   (" + " ".join(str_nullaries + str_nary) + ")")
    o.append("   (" + " ".join(int_terms) + ")")
    o.append("   (" + " ".join(bool_terms) + ")")
    o.append(" )")
    o.append(")")
    o.append("")
    o.extend(string_axioms())
    o.append("")

    # ---- signature ---------------------------------------------------------
    o.append("(declare-sort Idx 0)")
    o.append("(declare-sort Chr 0)")
    o.append("")
    for k in range(L + 1):
        o.append(f"(declare-fun idx.{k} () Idx)")
    o.append("(declare-fun idx.neg1 () Idx)")
    o.append("(declare-fun idx.bot () Idx)")
    o.append("(declare-fun chr.pad () Chr)")
    for d in range(10):
        o.append(f"(declare-fun chr.d{d} () Chr)")
    o.append("")
    for i in range(n_args):
        o.append(f"(declare-fun arg{i}.len () Idx)")
        o.append(f"(declare-fun arg{i}.chr (Idx) Chr)")
    for i in range(len(constants)):
        o.append(f"(declare-fun c{i}.len () Idx)")
        o.append(f"(declare-fun c{i}.chr (Idx) Chr)")
    o.append("(declare-fun out.len () Idx)")
    o.append("(declare-fun out.chr (Idx) Chr)")
    o.append("(declare-fun plus.idx  (Idx Idx) Idx)")
    o.append("(declare-fun minus.idx (Idx Idx) Idx)")
    o.append("(declare-fun lt.idx    (Idx Idx) Bool)")
    o.append("")

    o.append("(define-aspects ExAsp   (record (model Model)))")
    o.append("(define-aspects CharAsp (record (model Model) (k Idx)))")
    o.append("")

    # ---- IndexOfFirst helper relation (first match of y in x, value Idx) ---
    # Used by replace; defined as a value-semantics relation over Str x with a
    # second Str argument is not expressible (single term arg), so we instead
    # inline indexof via a dedicated relation keyed on the replace node.  To
    # keep within the single-term-arg model, we express replace's match inline
    # using SInt indexof semantics already available: IndexOfFirst is emitted
    # as a macro expansion below by referencing match_at on x,y.  We realize it
    # as a 0-start indexof inline.
    # (No separate relation: char_replace/len_replace call (IndexOfFirst x y asp)
    #  which we provide as a SInt-free Idx relation here.)
    o.append("(define-semantics")
    o.append("  ((IndexOfFirst (e Str) (asp ExAsp)))")
    o.append("  :returns Idx")
    o.append("  ((match e")
    # IndexOfFirst is only meaningful inside replace, where e is the haystack x
    # and the needle is the sibling y.  But a value-semantics relation sees only
    # its own term e.  We therefore cannot access y here; replace is handled
    # WITHOUT this relation.  Keep a stub so the grammar stays well-formed.
    o.append("     ((str.++ x y) idx.bot)")
    for i in range(len(constants)):
        o.append(f"     ((str.c{i}) idx.bot)")
    for i in range(n_args):
        o.append(f"     ((arg{i}) idx.bot)")
    o.append("     ((str.replace x y z) idx.bot)")
    o.append("     ((str.at x i) idx.bot)")
    o.append("     ((str.int2str i) idx.bot)")
    o.append("     ((str.ite b x y) idx.bot)")
    o.append("     ((str.substr x i n) idx.bot)")
    o.append("  )))")
    o.append("")

    # ---- Str.Len -----------------------------------------------------------
    lc = []
    for i in range(len(constants)):
        lc.append(f"     ((str.c{i}) c{i}.len)")
    for i in range(n_args):
        lc.append(f"     ((arg{i}) arg{i}.len)")
    lc.append("     ((str.++ x y) (plus.idx (Str.Len x asp) (Str.Len y asp)))")
    lc.append("     ((str.ite b x y) (ite (SBool.Sem b asp) (Str.Len x asp) (Str.Len y asp)))")
    lc.append(f"     ((str.at x i) {len_at()})")
    lc.append(f"     ((str.substr x i n) {len_substr()})")
    lc.append(f"     ((str.int2str i) {len_int2str(L)})")
    lc.append("     ((str.replace x y z) idx.bot)")  # replace: see note; stubbed len
    o.append("(define-semantics")
    o.append("  ((Str.Len (e Str) (asp ExAsp)))")
    o.append("  :returns Idx")
    o.append("  ((match e")
    o.append("\n".join(lc))
    o.append("  )))")
    o.append("")

    # ---- Str.Char ----------------------------------------------------------
    cc = []
    for i in range(len(constants)):
        cc.append(f"     ((str.c{i}) (c{i}.chr (k asp)))")
    for i in range(n_args):
        cc.append(f"     ((arg{i}) (arg{i}.chr (k asp)))")
    cc.append("     ((str.++ x y)\n      " + char_concat(L) + ")")
    cc.append("     ((str.ite b x y)\n"
              "      (ite (SBool.Sem b (ExAsp (model asp))) (Str.Char x asp) (Str.Char y asp)))")
    cc.append("     ((str.at x i)\n      " + char_at(L) + ")")
    cc.append("     ((str.substr x i n)\n      " + char_substr(L) + ")")
    cc.append("     ((str.int2str i)\n      " + char_int2str(L) + ")")
    cc.append("     ((str.replace x y z) chr.pad)")  # replace stubbed (see note)
    o.append("(define-semantics")
    o.append("  ((Str.Char (e Str) (asp CharAsp)))")
    o.append("  :returns Chr")
    o.append("  ((match e")
    o.append("\n".join(cc))
    o.append("  )))")
    o.append("")

    # ---- SInt.Sem ----------------------------------------------------------
    ic = []
    ic.append("     ((int.0) idx.0)")
    ic.append("     ((int.1) idx.1)")
    ic.append("     ((int.neg1) idx.neg1)")
    ic.append("     ((int.+ x y) (plus.idx (SInt.Sem x asp) (SInt.Sem y asp)))")
    ic.append("     ((int.- x y) (minus.idx (SInt.Sem x asp) (SInt.Sem y asp)))")
    ic.append("     ((int.len x) (Str.Len x asp))")
    ic.append("     ((int.ite b x y) (ite (SBool.Sem b asp) (SInt.Sem x asp) (SInt.Sem y asp)))")
    ic.append(f"     ((int.to_int x) {sint_to_int(L)})")
    ic.append(f"     ((int.indexof x y k)\n      {sint_indexof(L)})")
    o.append("(define-semantics")
    o.append("  ((SInt.Sem (e SInt) (asp ExAsp)))")
    o.append("  :returns Idx")
    o.append("  ((match e")
    o.append("\n".join(ic))
    o.append("  )))")
    o.append("")

    # ---- SBool.Sem ---------------------------------------------------------
    bc = []
    bc.append("     ((bool.true) true)")
    bc.append("     ((bool.false) false)")
    bc.append("     ((bool.= x y) (= (SInt.Sem x asp) (SInt.Sem y asp)))")
    bc.append(f"     ((bool.prefixof x y) {bool_prefixof(L)})")
    bc.append(f"     ((bool.suffixof x y) {bool_suffixof(L)})")
    bc.append(f"     ((bool.contains x y) {bool_contains(L)})")
    o.append("(define-semantics")
    o.append("  ((SBool.Sem (e SBool) (asp ExAsp)))")
    o.append("  ((match e")
    o.append("\n".join(bc))
    o.append("  )))")
    o.append("")

    o.append("")

    for m in models:
        o.extend(emit_model(m, n_args, constants, L))

    arg_params = " ".join(f"(arg{i} Str)" for i in range(n_args))
    o.append(f"(synth-fun f ({arg_params}) Str)")
    o.append("")
    for m in models:
        mn = m['name']
        o.append(f"(constraint (= (Str.Len f (ExAsp {mn})) (get-fun out.len {mn})))")
        for k in range(L + 1):
            o.append(f"(constraint (= (Str.Char f (CharAsp {mn} idx.{k})) (get-fun out.chr {mn} idx.{k})))")
    o.append("")
    o.append("(check-synth)")
    return "\n".join(o)


# OutEq char bodies for at/substr/int2str: same as Str.Char arms but evaluated
# at position idx.k under ExAsp's model (these touch only children, so they are
# legal in OutEq).

def char_at_outeq(kk, L):
    inner = enum_idx("(SInt.Sem i (ExAsp (model asp)))",
                     lambda j: f"(Str.Char x (CharAsp (model asp) idx.{j}))", L, "chr.pad")
    return inner if kk == 0 else "chr.pad"


def char_substr_outeq(kk, L):
    take = enum_idx("(SInt.Sem i (ExAsp (model asp)))",
                    lambda j: f"(Str.Char x (CharAsp (model asp) (plus.idx idx.{j} idx.{kk})))",
                    L, "chr.pad")
    return f"(ite (lt.idx idx.{kk} (SInt.Sem n (ExAsp (model asp)))) {take} chr.pad)"


def char_int2str_outeq(kk, L):
    def per_v(v):
        s = str(v)
        return chr_const(s[kk]) if kk < len(s) else "chr.pad"
    return enum_idx("(SInt.Sem i (ExAsp (model asp)))", per_v, L, "chr.pad")


# ===========================================================================
# Model emission
# ===========================================================================

def emit_model(m, n_args, constants, L):
    lines = []
    name = m['name']
    chars = m['chars'] if m['chars'] else ['?']

    idx_elems = " ".join(idx_e(i) for i in range(L + 1)) + " " + BOT
    chr_elems = PAD + " " + " ".join(char_univ_name(c) for c in chars)

    lines.append(f"(define-model {name}")
    lines.append(f"  (interp-sort Idx ({idx_elems}))")
    lines.append(f"  (interp-sort Chr ({chr_elems}))")
    for k in range(L + 1):
        lines.append(f"  (interp-fun idx.{k} ({idx_e(k)}))")
    lines.append(f"  (interp-fun idx.neg1 ({BOT}))")
    lines.append(f"  (interp-fun idx.bot ({BOT}))")
    lines.append(f"  (interp-fun chr.pad ({PAD}))")
    for d in range(10):
        lines.append(f"  (interp-fun chr.d{d} ({char_univ_name(str(d))}))")
    for i, inp in enumerate(m['inputs']):
        lines.append(f"  (interp-fun arg{i}.len ({idx_e(len(inp))}))")
        lines.append(f"  (interp-fun arg{i}.chr {char_table(inp)})")
    for i in range(len(m['inputs']), n_args):
        lines.append(f"  (interp-fun arg{i}.len ({idx_e(0)}))")
        lines.append(f"  (interp-fun arg{i}.chr (match (((_) {PAD}))))")
    for i, c in enumerate(constants):
        lines.append(f"  (interp-fun c{i}.len ({idx_e(len(c))}))")
        lines.append(f"  (interp-fun c{i}.chr {char_table(c)})")
    lines.append(f"  (interp-fun out.len ({idx_e(m['out_len'])}))")
    lines.append(f"  (interp-fun out.chr {char_table(m['output'])})")
    lines.append(f"  (interp-fun plus.idx {plus_table(L)})")
    lines.append(f"  (interp-fun minus.idx {minus_table(L)})")
    lines.append(f"  (interp-fun lt.idx {lt_table(L)})")
    lines.append(")")
    lines.append("")
    return lines


def char_table(text):
    clauses = [f"(({idx_e(i)}) {char_univ_name(ch)})" for i, ch in enumerate(text)]
    clauses.append(f"((_) {PAD})")
    return "(match (" + " ".join(clauses) + "))"


def plus_table(L):
    clauses = [f"(({idx_e(a)} {idx_e(b)}) {idx_e(a + b)})"
               for a in range(L + 1) for b in range(L + 1) if a + b <= L]
    clauses.append(f"((_ _) {BOT})")
    return "(match (" + " ".join(clauses) + "))"


def minus_table(L):
    clauses = [f"(({idx_e(a)} {idx_e(b)}) {idx_e(a - b)})"
               for a in range(L + 1) for b in range(L + 1) if a - b >= 0]
    clauses.append(f"((_ _) {BOT})")
    return "(match (" + " ".join(clauses) + "))"


def lt_table(L):
    clauses = [f"(({idx_e(a)} {idx_e(b)}) true)"
               for a in range(L + 1) for b in range(L + 1) if a < b]
    clauses.append("((_ _) false)")
    return "(match (" + " ".join(clauses) + "))"


# ===========================================================================
# CLI
# ===========================================================================

def main():
    ap = argparse.ArgumentParser(description="Convert SyGuS SLIA to Delis (Len,Char) .sl")
    ap.add_argument("--input", required=True)
    ap.add_argument("--output", required=True)
    ap.add_argument("--source", default=None)
    ap.add_argument("--slack", type=int, default=0)
    args = ap.parse_args()

    path = Path(args.input)
    n_args, constants, constraints = parse_sygus(path)
    if not constraints:
        print(f"warning: no constraints in {path}", file=sys.stderr)
        return
    src = args.source if args.source is not None else path.name
    text = emit(n_args, constants, constraints, slack=args.slack, source_tag=src)
    Path(args.output).write_text(text)
    print(f"{path.name}: {n_args} args, {len(constants)} consts, {len(constraints)} models")


if __name__ == "__main__":
    main()
