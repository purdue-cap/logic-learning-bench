#!/usr/bin/env python3
"""Generate demand/equality-style Delis String benchmarks (v2).

v2 of the eq-style encoding.  Changes vs v1:

1. Functional semantics: `Str.Len`, `SInt.Sem`, `Str.Val` use `:returns`
   (like gen_lenchar.py) instead of relational aspects.  This removes the
   deeply nested `exists (univ (Pos ...))` quantifiers whose grounding
   dominated compile time (bisim quotient walks).
2. Widened length domain: `Pos` universe is $0..$B with B = 2L plus an
   `$inv` sentinel, so intermediate strings longer than L (e.g.
   `arg0 ++ c`) keep exact lengths instead of collapsing to a junk value.
3. `Val` universe gains "" (with exact concat/prefix/suffix/contains
   tables), enabling the concat identity rows v1 was missing.  Substrings
   are deliberately excluded: candidate-term values are only ever leaves
   and concats of leaves, so substring values are unreachable.
4. Trimmed aspect spaces: `EqAsp` uses Int fields with
   `:where (<= i j) (<= j (size (PosOut model)))` and `CharEqAsp` trims its
   out-position field the same way (Reg-style).

Known conservative approximations (all sound *rejections* except the noted
parity item): replace/to_int/indexof unsupported; int2str of multi-digit
values rejected when a character is demanded; substr with invalid start
conflates "negative" with "> B" (parity with v1).
"""

import argparse
import re
import shutil
import sys
from pathlib import Path

def smt_string_literals(text: str) -> list[str]:
    out: list[str] = []
    i = 0
    while i < len(text):
        if text[i] != '"':
            i += 1
            continue
        i += 1
        chars: list[str] = []
        while i < len(text):
            ch = text[i]
            if ch == '"':
                if i + 1 < len(text) and text[i + 1] == '"':
                    chars.append('"')
                    i += 2
                    continue
                i += 1
                break
            if ch == "\\" and i + 1 < len(text):
                nxt = text[i + 1]
                chars.append("\n" if nxt == "n" else "\t" if nxt == "t" else nxt)
                i += 2
                continue
            chars.append(ch)
            i += 1
        out.append("".join(chars))
    return out


def sexpr_forms(text: str, head: str) -> list[str]:
    forms: list[str] = []
    pos = 0
    while True:
        start = text.find(head, pos)
        if start < 0:
            break
        depth = 0
        i = start
        in_string = False
        while i < len(text):
            ch = text[i]
            if in_string:
                if ch == '"':
                    if i + 1 < len(text) and text[i + 1] == '"':
                        i += 2
                        continue
                    in_string = False
                elif ch == "\\" and i + 1 < len(text):
                    i += 2
                    continue
                i += 1
                continue
            if ch == '"':
                in_string = True
            elif ch == "(":
                depth += 1
            elif ch == ")":
                depth -= 1
                if depth == 0:
                    i += 1
                    forms.append(text[start:i])
                    break
            i += 1
        pos = max(i, start + len(head))
    return forms


def parse_sygus(path: Path) -> tuple[int, list[str], list[tuple[list[str], str]]]:
    text = path.read_text()
    m = re.search(r"\(synth-fun\s+\w+\s*\(((?:\([^)]*\)\s*)*)\)", text)
    if not m:
        raise ValueError(f"no synth-fun in {path}")
    n_args = len(re.findall(r"\([A-Za-z_][A-Za-z0-9_]*\s+String\)", m.group(1)))

    constants: list[str] = []
    for value in smt_string_literals(text.split("(constraint", 1)[0]):
        if value not in constants:
            constants.append(value)

    constraints: list[tuple[list[str], str]] = []
    for form in sexpr_forms(text, "(constraint"):
        strings = smt_string_literals(form)
        if strings:
            constraints.append((strings[:-1], strings[-1]))

    seen: set[tuple[tuple[str, ...], str]] = set()
    deduped: list[tuple[list[str], str]] = []
    for inputs, output in constraints:
        key = (tuple(inputs), output)
        if key in seen:
            continue
        seen.add(key)
        deduped.append((inputs, output))
    return n_args, constants, deduped


def pos(n: int) -> str:
    return f"${n}"


def pos_const(n: int) -> str:
    return f"pos.{n}"


def val(n: int) -> str:
    return f"${n}"


def and_expr(parts: list[str]) -> str:
    if not parts:
        return "true"
    if len(parts) == 1:
        return parts[0]
    return "(and " + " ".join(parts) + ")"


def match_table(cases: list[tuple[tuple[str, ...], str]], default: str, arity: int) -> str:
    parts = [f"(({' '.join(args)}) {value})" for args, value in cases]
    parts.append(f"(({' '.join(['_'] * arity)}) {default})")
    return "(match (" + " ".join(parts) + "))"


def term_types(n_args: int, constants: list[str]) -> list[str]:
    str_terms = [f"(str.c{i})" for i in range(len(constants))]
    str_terms.extend(f"(arg{i})" for i in range(n_args))
    str_terms.extend(
        [
            "(str.++ Str Str)",
            "(str.replace Str Str Str)",
            "(str.at Str SInt)",
            "(str.int2str SInt)",
            "(str.ite SBool Str Str)",
            "(str.substr Str SInt SInt)",
        ]
    )
    int_terms = [
        "(int.0)",
        "(int.1)",
        "(int.neg1)",
        "(int.+ SInt SInt)",
        "(int.- SInt SInt)",
        "(int.len Str)",
        "(int.to_int Str)",
        "(int.ite SBool SInt SInt)",
        "(int.indexof Str Str SInt)",
    ]
    bool_terms = [
        "(bool.true)",
        "(bool.false)",
        "(bool.= SInt SInt)",
        "(bool.prefixof Str Str)",
        "(bool.suffixof Str Str)",
        "(bool.contains Str Str)",
    ]
    return [
        "(declare-term-types",
        " ((Str 0) (SInt 0) (SBool 0))",
        " (",
        "   (" + " ".join(str_terms) + ")",
        "   (" + " ".join(int_terms) + ")",
        "   (" + " ".join(bool_terms) + ")",
        " )",
        ")",
    ]


def string_axioms() -> list[str]:
    return [
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


def alphabet(constants: list[str]) -> list[str]:
    """Concrete-char universe for CharIs: all digits plus constant chars.

    Digits are always included because to_int/int2str query them; other
    chars only need observations when they can appear in a needle, i.e.
    when they occur in a grammar constant.
    """
    chars = [str(d) for d in range(10)]
    for value in constants:
        for ch in value:
            if ch not in chars:
                chars.append(ch)
    return chars


def chr_elem(sigma: list[str], ch: str) -> str:
    return f"$h{sigma.index(ch)}"


def declarations(
    n_args: int, constants: list[str], B: int, enable_char_ops: bool, enable_charis: bool
) -> list[str]:
    lines = ["(declare-sort Pos 0)", "(declare-sort PosOut 0)", "(declare-sort Val 0)"]
    if enable_charis:
        lines.append("(declare-sort Chr 0)")
    lines.append("")
    for n in range(B + 1):
        lines.append(f"(declare-fun {pos_const(n)} () Pos)")
    lines.append("(declare-fun pos.inv () Pos)")
    lines.append("(declare-fun val.unknown () Val)")
    lines.append("(declare-fun le.pos (Pos Pos) Bool)")
    lines.append("(declare-fun plus.pos (Pos Pos) Pos)")
    lines.append("(declare-fun minus.pos (Pos Pos) Pos)")
    if enable_char_ops:
        lines.append("(declare-fun lt.pos (Pos Pos) Bool)")
        # lt against a *length* value: $inv lengths mean "> B", so any
        # concrete position is below them; generic lt.pos treats $inv as
        # unknown-int (could be negative) and answers false.
        lines.append("(declare-fun ltl.pos (Pos Pos) Bool)")
        lines.append("(declare-fun int2str.len (Pos) Pos)")
        lines.append("(declare-fun digit.eq (Pos Pos) Bool)")
    if enable_charis:
        for d in range(10):
            lines.append(f"(declare-fun chr.d{d} () Chr)")
        lines.append("(declare-fun digit.is (Pos Chr) Bool)")
        if B > 9:
            lines.append("(declare-fun digit2.is (Pos Chr) Bool)")
    lines.append("(declare-fun concat.val (Val Val) Val)")
    lines.append("(declare-fun prefix.val (Val Val) Bool)")
    lines.append("(declare-fun suffix.val (Val Val) Bool)")
    lines.append("(declare-fun contains.val (Val Val) Bool)")
    for i in range(n_args):
        lines.append(f"(declare-fun arg{i}.len () Pos)")
        lines.append(f"(declare-fun arg{i}.eq (Pos Pos) Bool)")
        if enable_char_ops:
            lines.append(f"(declare-fun arg{i}.chareq (Pos Pos) Bool)")
        if enable_charis:
            lines.append(f"(declare-fun arg{i}.charis (Pos Chr) Bool)")
        lines.append(f"(declare-fun arg{i}.val () Val)")
    for i in range(len(constants)):
        lines.append(f"(declare-fun c{i}.eq (Pos Pos) Bool)")
        if enable_char_ops:
            lines.append(f"(declare-fun c{i}.chareq (Pos Pos) Bool)")
        if enable_charis:
            lines.append(f"(declare-fun c{i}.charis (Pos Chr) Bool)")
        lines.append(f"(declare-fun c{i}.val () Val)")
    return lines


def aspects(enable_char_ops: bool, enable_charis: bool = False, enable_replace: bool = False) -> list[str]:
    lines = [
        "(define-aspects ExAsp (record (model Model)))",
        "(define-aspects EqAsp",
        "  (record (model Model) (i Int) (j Int))",
        "  :where (and (<= i j) (<= j (size (PosOut model)))))",
    ]
    if enable_char_ops:
        lines.extend(
            [
                "(define-aspects CharEqAsp",
                "  (record (model Model) (k Pos) (o Int))",
                "  :where (< o (size (PosOut model))))",
            ]
        )
    if enable_charis:
        lines.append("(define-aspects CharIsAsp (record (model Model) (k Pos) (c Chr)))")
    if enable_replace:
        lines.append("(define-aspects OccAsp (record (model Model) (p Pos)))")
    return lines


EX = "(ExAsp (model asp))"


def sint_call(term: str) -> str:
    return f"(SInt.Sem {term} {EX})"


def len_call(term: str) -> str:
    return f"(Str.Len {term} {EX})"


def out_demand(offset: int, char_eq_body_fn) -> str:
    """Guarded per-position demand for output offset `i + offset`.

    The `<` guard is concrete per aspect instance at grounding time and
    short-circuits the `or`, so the CharEqAsp in the demand is only
    constructed when i + offset <= j - 1, i.e. inside the :where-trimmed
    aspect space.  (An int-range single-value binder would also guard the
    construction, but such binders evaluate incorrectly inside these rule
    bodies for i > 0 — see probe6/probe7.)
    `char_eq_body_fn` receives the demanded output-position expression.
    """
    o_expr = "(i asp)" if offset == 0 else f"(+ (i asp) {offset})"
    return f"(or (< (- (j asp) 1) {o_expr}) {char_eq_body_fn(o_expr)})"


NEEDLE_MAX = 2   # supported needle (y) lengths: 1..2
REPL_MAX = 2     # supported replacement (z) lengths: 0..2


def occ_atom(pp: int) -> str:
    return f"(Str.OccAt e (OccAsp (model asp) pos.{pp}))"


def first_occ(pp: int) -> list[str]:
    return [f"(Str.FirstOccAt e (OccAsp (model asp) pos.{pp}))"]


def no_occ(B: int) -> list[str]:
    return [f"(not {occ_atom(q)})" for q in range(B)]


def obs_x(B: int) -> list[str]:
    """x's chars must be exactly CharIs-decidable for (not OccAt) to be exact.

    CharIs is exact for every constructor except replace (whose CharIs arm
    is conservative false), so a single Str.Obs bit — "x contains no
    replace" — suffices and is far cheaper than per-position checks.
    """
    return [f"(Str.Obs x {EX})"]


def obs_y(yl: int) -> list[str]:
    """Needle chars must be alphabet-observable for (not OccAt) to be exact."""
    return [
        f"(exists ((cc Chr))"
        f" (Str.CharIs y (CharIsAsp (model asp) pos.{j} cc)))"
        for j in range(yl)
    ]


def replace_shape(yl: int, zl: int) -> list[str]:
    return [
        f"(= {len_call('y')} pos.{yl})",
        f"(= {len_call('z')} pos.{zl})",
        *obs_y(yl),
    ]


def replace_eq_arm(B: int, max_out: int) -> str:
    """Str.Eq arm for (str.replace x y z): out[i..j) = x[0..p) ++ z ++ x[p+|y|..)."""
    branches: list[str] = []
    for yl in range(1, NEEDLE_MAX + 1):
        branches.append(
            "(and "
            + " ".join(
                [f"(= {len_call('y')} pos.{yl})", *obs_y(yl), *obs_x(B), *no_occ(B), "(Str.Eq x asp)"]
            )
            + ")"
        )
    for yl in range(1, NEEDLE_MAX + 1):
        for zl in range(REPL_MAX + 1):
            group: list[str] = []
            for pp in range(min(B - yl, max_out) + 1):
                parts = [*first_occ(pp)]
                parts.append(
                    f"(= (minus.pos (j asp) (i asp))"
                    f" (plus.pos (minus.pos {len_call('x')} pos.{yl}) pos.{zl}))"
                )
                for k in range(pp):
                    parts.append(
                        f"(or (< (- (j asp) 1) (+ (i asp) {k}))"
                        f" (Str.CharEq x (CharEqAsp (model asp) pos.{k} {'(i asp)' if k == 0 else f'(+ (i asp) {k})'})))"
                    )
                if zl > 0:
                    lo = "(i asp)" if pp == 0 else f"(+ (i asp) {pp})"
                    parts.append(
                        f"(or (< (j asp) (+ (i asp) {pp + zl}))"
                        f" (Str.Eq z (EqAsp (model asp) {lo} (+ (i asp) {pp + zl}))))"
                    )
                for k in range(max_out):
                    if pp + yl + k > B:
                        break
                    o_off = pp + zl + k
                    parts.append(
                        f"(or (< (- (j asp) 1) (+ (i asp) {o_off}))"
                        f" (Str.CharEq x (CharEqAsp (model asp) pos.{pp + yl + k} {'(i asp)' if o_off == 0 else f'(+ (i asp) {o_off})'})))"
                    )
                group.append("(and " + " ".join(parts) + ")")
            if group:
                branches.append(
                    "(and "
                    + " ".join(replace_shape(yl, zl))
                    + " (or "
                    + " ".join(group)
                    + "))"
                )
    return "(or " + "\n          ".join(branches) + ")"


def replace_char_arm(B: int, rel: str, asp_ctor: str, extra_field: str) -> str:
    """Shared shape of the replace arm for Str.CharEq / Str.CharIs.

    Routes demanded position k into prefix (x), middle (z), or shifted
    suffix (x at k + |y| - |z|).
    """
    branches: list[str] = []
    for yl in range(1, NEEDLE_MAX + 1):
        branches.append(
            "(and "
            + " ".join(
                [f"(= {len_call('y')} pos.{yl})", *obs_y(yl), *obs_x(B), *no_occ(B), f"({rel} x asp)"]
            )
            + ")"
        )
    for yl in range(1, NEEDLE_MAX + 1):
        for zl in range(REPL_MAX + 1):
            group: list[str] = []
            for pp in range(B - yl + 1):
                routes = []
                if pp > 0:
                    routes.append(f"(and (lt.pos (k asp) pos.{pp}) ({rel} x asp))")
                if zl > 0 and pp + zl <= B:
                    routes.append(
                        f"(and (le.pos pos.{pp} (k asp)) (lt.pos (k asp) pos.{pp + zl})"
                        f" ({rel} z ({asp_ctor} (model asp) (minus.pos (k asp) pos.{pp}) {extra_field})))"
                    )
                if pp + zl <= B:
                    # demanded positions beyond B cannot exist, so the mid and
                    # suffix routes are only emitted while their pos constants
                    # stay in the declared range
                    routes.append(
                        f"(and (le.pos pos.{pp + zl} (k asp))"
                        f" ({rel} x ({asp_ctor} (model asp)"
                        f" (plus.pos (minus.pos (k asp) pos.{pp + zl}) pos.{pp + yl}) {extra_field})))"
                    )
                if not routes:
                    continue
                parts = [*first_occ(pp), "(or " + " ".join(routes) + ")"]
                group.append("(and " + " ".join(parts) + ")")
            if group:
                branches.append(
                    "(and "
                    + " ".join(replace_shape(yl, zl))
                    + " (or "
                    + " ".join(group)
                    + "))"
                )
    return "(or " + "\n          ".join(branches) + ")"


def str_first_occ(n_args: int, constants: list[str], B: int) -> list[str]:
    """FirstOccAt(e, p): OccAt(e, p) and no occurrence before p."""
    arms: list[str] = []
    for i in range(len(constants)):
        arms.append(f"     ((str.c{i}) false)")
    for i in range(n_args):
        arms.append(f"     ((arg{i}) false)")
    for head in ["str.++ x y", "str.at x i", "str.int2str i", "str.ite b x y", "str.substr x i n"]:
        arms.append(f"     (({head}) false)")
    firsts = " ".join(
        f"(ite (lt.pos pos.{q} (p asp)) (not (Str.OccAt e (OccAsp (model asp) pos.{q}))) true)"
        for q in range(B)
    )
    arms.append(
        "     ((str.replace x y z)\n"
        "      (and (Str.OccAt e (OccAsp (model asp) (p asp)))\n"
        f"           {firsts}))"
    )
    return [
        "(define-semantics",
        "  ((Str.FirstOccAt (e Str) (asp OccAsp)))",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def str_obs(n_args: int, constants: list[str]) -> list[str]:
    """Obs(e): CharIs decides e's characters exactly (i.e. e is replace-free)."""
    arms: list[str] = []
    for i in range(len(constants)):
        arms.append(f"     ((str.c{i}) true)")
    for i in range(n_args):
        arms.append(f"     ((arg{i}) true)")
    arms.append("     ((str.++ x y) (and (Str.Obs x asp) (Str.Obs y asp)))")
    arms.append("     ((str.replace x y z) false)")
    arms.append("     ((str.at x i) (Str.Obs x asp))")
    arms.append("     ((str.int2str i) true)")
    arms.append("     ((str.ite b x y) (and (Str.Obs x asp) (Str.Obs y asp)))")
    arms.append("     ((str.substr x i n) (Str.Obs x asp))")
    return [
        "(define-semantics",
        "  ((Str.Obs (e Str) (asp ExAsp)))",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def str_occ_at(n_args: int, constants: list[str]) -> list[str]:
    """OccAt(e, p): e is (str.replace x y z) and y occurs in x at position p.

    Exact for needle lengths 1..2 with alphabet-observable needle chars
    (callers guard both); shared so first-occurrence tests are single atoms.
    """
    arms: list[str] = []
    for i in range(len(constants)):
        arms.append(f"     ((str.c{i}) false)")
    for i in range(n_args):
        arms.append(f"     ((arg{i}) false)")
    arms.append("     ((str.++ x y) false)")
    charm0 = (
        "(exists ((cc Chr))"
        " (and (Str.CharIs x (CharIsAsp (model asp) (p asp) cc))"
        " (Str.CharIs y (CharIsAsp (model asp) pos.0 cc))))"
    )
    charm1 = (
        f"(ite (= {len_call('y')} pos.2)"
        " (exists ((cc Chr))"
        " (and (Str.CharIs x (CharIsAsp (model asp) (plus.pos (p asp) pos.1) cc))"
        " (Str.CharIs y (CharIsAsp (model asp) pos.1 cc))))"
        " true)"
    )
    arms.append(
        "     ((str.replace x y z)\n"
        f"      (and (le.pos (plus.pos (p asp) {len_call('y')}) {len_call('x')})\n"
        f"           {charm0}\n"
        f"           {charm1}))"
    )
    arms.append("     ((str.at x i) false)")
    arms.append("     ((str.int2str i) false)")
    arms.append("     ((str.ite b x y) false)")
    arms.append("     ((str.substr x i n) false)")
    return [
        "(define-semantics",
        "  ((Str.OccAt (e Str) (asp OccAsp)))",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def str_eq(
    n_args: int, constants: list[str], max_out: int, enable_char_ops: bool,
    enable_replace: bool = False, B: int = 0,
) -> list[str]:
    arms: list[str] = []
    for i in range(len(constants)):
        arms.append(f"     ((str.c{i}) (c{i}.eq (i asp) (j asp)))")
    for i in range(n_args):
        arms.append(f"     ((arg{i}) (arg{i}.eq (i asp) (j asp)))")
    arms.append(
        "     ((str.++ x y)\n"
        "      (exists ((k (int-range (i asp) (j asp))))\n"
        "        (and (Str.Eq x (EqAsp (model asp) (i asp) k))\n"
        "             (Str.Eq y (EqAsp (model asp) k (j asp))))))"
    )
    if enable_replace:
        arms.append(f"     ((str.replace x y z)\n      {replace_eq_arm(B, max_out)})")
    else:
        arms.append("     ((str.replace x y z) false)")
    if enable_char_ops:
        at_demand = out_demand(0, lambda o: f"(Str.CharEq x (CharEqAsp (model asp) iv {o}))")
        arms.append(
            "     ((str.at x i)\n"
            "      (exists ((iv Pos))\n"
            f"        (and (= iv {sint_call('i')})\n"
            f"             (= (minus.pos (j asp) (i asp)) (ite (ltl.pos iv {len_call('x')}) pos.1 pos.0))\n"
            f"             {at_demand})))"
        )
        i2s_demand = out_demand(0, lambda o: f"(digit.eq iv {o})")
        arms.append(
            "     ((str.int2str i)\n"
            "      (exists ((iv Pos))\n"
            f"        (and (= iv {sint_call('i')})\n"
            "             (= (minus.pos (j asp) (i asp)) (int2str.len iv))\n"
            f"             {i2s_demand})))"
        )
    else:
        arms.append("     ((str.at x i) false)")
        arms.append("     ((str.int2str i) false)")
    arms.append(
        "     ((str.ite b x y)\n"
        f"      (or (and (SBool.Sem b {EX}) (Str.Eq x asp))\n"
        f"          (and (not (SBool.Sem b {EX})) (Str.Eq y asp))))"
    )
    if enable_char_ops:
        demands = []
        for r in range(max_out):
            k_expr = "iv" if r == 0 else f"(plus.pos iv pos.{r})"
            demands.append(
                out_demand(
                    r,
                    lambda o, k_expr=k_expr: f"(Str.CharEq x (CharEqAsp (model asp) {k_expr} {o}))",
                )
            )
        # rlen = j - i, expressed as a boolean decomposition over direct
        # semantic calls (each call referenced once, outside the iv binder)
        # instead of an ite value tree — the tree re-expands per iv branch
        # in the BV encoding and dominated its size.
        iv_c, nv_c, lx_c = sint_call("i"), sint_call("n"), len_call("x")
        w = "(minus.pos (j asp) (i asp))"
        width_ok = (
            f"(or (and (= {w} pos.0)\n"
            f"                  (or (= {iv_c} pos.inv) (= {nv_c} pos.inv) (lt.pos {lx_c} {iv_c}) (= {nv_c} pos.0) (= {lx_c} {iv_c})))\n"
            f"             (and (le.pos pos.1 {w})\n"
            f"                  (not (= {iv_c} pos.inv)) (not (= {nv_c} pos.inv))\n"
            f"                  (or (and (= {nv_c} {w}) (le.pos (plus.pos {iv_c} {w}) {lx_c}))\n"
            f"                      (and (not (= {lx_c} pos.inv)) (= {lx_c} (plus.pos {iv_c} {w})) (le.pos {w} {nv_c})))))"
        )
        arms.append(
            "     ((str.substr x i n)\n"
            f"      (and {width_ok}\n"
            "           (or (< (- (j asp) 1) (i asp))\n"
            "               (exists ((iv Pos))\n"
            f"                 (and (= iv {iv_c})\n"
            "                      " + "\n                      ".join(demands) + ")))))"
        )
    else:
        arms.append("     ((str.substr x i n) false)")
    return [
        "(define-semantics",
        "  ((Str.Eq (e Str) (asp EqAsp)))",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def str_char_eq(
    n_args: int, constants: list[str], enable_replace: bool = False, B: int = 0
) -> list[str]:
    arms: list[str] = []
    for i in range(len(constants)):
        arms.append(f"     ((str.c{i}) (c{i}.chareq (k asp) (o asp)))")
    for i in range(n_args):
        arms.append(f"     ((arg{i}) (arg{i}.chareq (k asp) (o asp)))")
    arms.append(
        "     ((str.++ x y)\n"
        "      (exists ((lx Pos))\n"
        f"        (and (= lx {len_call('x')})\n"
        "             (or (and (ltl.pos (k asp) lx)\n"
        "                      (Str.CharEq x asp))\n"
        "                 (and (le.pos lx (k asp))\n"
        "                      (Str.CharEq y (CharEqAsp (model asp) (minus.pos (k asp) lx) (o asp))))))))"
    )
    if enable_replace:
        arms.append(
            f"     ((str.replace x y z)\n      {replace_char_arm(B, 'Str.CharEq', 'CharEqAsp', '(o asp)')})"
        )
    else:
        arms.append("     ((str.replace x y z) false)")
    arms.append(
        "     ((str.at x i)\n"
        "      (and (= (k asp) pos.0)\n"
        "           (exists ((iv Pos))\n"
        f"             (and (= iv {sint_call('i')})\n"
        "                  (Str.CharEq x (CharEqAsp (model asp) iv (o asp)))))))"
    )
    arms.append(
        "     ((str.int2str i)\n"
        "      (and (= (k asp) pos.0)\n"
        "           (exists ((iv Pos))\n"
        f"             (and (= iv {sint_call('i')})\n"
        "                  (digit.eq iv (o asp))))))"
    )
    arms.append(
        "     ((str.ite b x y)\n"
        f"      (or (and (SBool.Sem b {EX}) (Str.CharEq x asp))\n"
        f"          (and (not (SBool.Sem b {EX})) (Str.CharEq y asp))))"
    )
    # k < rlen  <=>  k < n  and  i + k < len(x)  (with validity checks).
    # The i + k < len(x) half is NOT checked explicitly: the recursive
    # CharEq demand at position iv + k is false whenever that position does
    # not exist in x (leaf tables and every arm enforce it), so an explicit
    # (ltl.pos (plus.pos I k) L) bound would be redundant — and it was the
    # dominant |Pos|^2 term of the BV substr transition function.
    arms.append(
        "     ((str.substr x i n)\n"
        f"      (and (not (= {sint_call('i')} pos.inv))\n"
        f"           (lt.pos (k asp) {sint_call('n')})\n"
        "           (exists ((iv Pos))\n"
        f"             (and (= iv {sint_call('i')})\n"
        "                  (Str.CharEq x (CharEqAsp (model asp) (plus.pos iv (k asp)) (o asp)))))))"
    )
    return [
        "(define-semantics",
        "  ((Str.CharEq (e Str) (asp CharEqAsp)))",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def str_char_is(n_args: int, constants: list[str], B: int) -> list[str]:
    """CharIs(e, k, c): char k of value(e) is the concrete character c.

    Mirrors Str.CharEq's recursion; leaves read per-model charis tables
    whose rows only cover the alphabet (digits + constant chars), so any
    other character is conservatively unobservable (false).
    """
    arms: list[str] = []
    for i in range(len(constants)):
        arms.append(f"     ((str.c{i}) (c{i}.charis (k asp) (c asp)))")
    for i in range(n_args):
        arms.append(f"     ((arg{i}) (arg{i}.charis (k asp) (c asp)))")
    arms.append(
        "     ((str.++ x y)\n"
        "      (exists ((lx Pos))\n"
        f"        (and (= lx {len_call('x')})\n"
        "             (or (and (ltl.pos (k asp) lx)\n"
        "                      (Str.CharIs x asp))\n"
        "                 (and (le.pos lx (k asp))\n"
        "                      (Str.CharIs y (CharIsAsp (model asp) (minus.pos (k asp) lx) (c asp))))))))"
    )
    # A replace arm here would need Str.OccAt on the same node, but OccAt
    # reads CharIs — a same-node cycle delis rejects ("self recursion in
    # direct component").  Conservative false; the obs_x guards in the
    # replace arms of Eq/CharEq keep this sound (nested replace is rejected).
    arms.append("     ((str.replace x y z) false)")
    arms.append(
        "     ((str.at x i)\n"
        "      (and (= (k asp) pos.0)\n"
        "           (exists ((iv Pos))\n"
        f"             (and (= iv {sint_call('i')})\n"
        "                  (Str.CharIs x (CharIsAsp (model asp) iv (c asp)))))))"
    )
    second_digit = (
        "(and (= (k asp) pos.1) (digit2.is iv (c asp)))" if B > 9 else "false"
    )
    arms.append(
        "     ((str.int2str i)\n"
        "      (exists ((iv Pos))\n"
        f"        (and (= iv {sint_call('i')})\n"
        f"             (or (and (= (k asp) pos.0) (digit.is iv (c asp))) {second_digit}))))"
    )
    arms.append(
        "     ((str.ite b x y)\n"
        f"      (or (and (SBool.Sem b {EX}) (Str.CharIs x asp))\n"
        f"          (and (not (SBool.Sem b {EX})) (Str.CharIs y asp))))"
    )
    arms.append(
        "     ((str.substr x i n)\n"
        f"      (and (not (= {sint_call('i')} pos.inv))\n"
        f"           (lt.pos (k asp) {sint_call('n')})\n"
        "           (exists ((iv Pos))\n"
        f"             (and (= iv {sint_call('i')})\n"
        "                  (Str.CharIs x (CharIsAsp (model asp) (plus.pos iv (k asp)) (c asp)))))))"
    )
    return [
        "(define-semantics",
        "  ((Str.CharIs (e Str) (asp CharIsAsp)))",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def str_len(
    n_args: int, constants: list[str], B: int, enable_char_ops: bool,
    enable_replace: bool = False,
) -> list[str]:
    arms: list[str] = []
    for i, value in enumerate(constants):
        target = pos_const(len(value)) if len(value) <= B else "pos.inv"
        arms.append(f"     ((str.c{i}) {target})")
    for i in range(n_args):
        arms.append(f"     ((arg{i}) arg{i}.len)")
    arms.append("     ((str.++ x y) (plus.pos (Str.Len x asp) (Str.Len y asp)))")
    if enable_replace:
        ly, lx, lz = "(Str.Len y asp)", "(Str.Len x asp)", "(Str.Len z asp)"
        obs = " ".join(
            f"(ite (lt.pos pos.{j} {ly})"
            f" (exists ((cc Chr)) (Str.CharIs y (CharIsAsp (model asp) pos.{j} cc)))"
            f" true)"
            for j in range(2)
        )
        def inline_occ(q: int) -> str:
            charm0 = (
                f"(exists ((cc Chr))"
                f" (and (Str.CharIs x (CharIsAsp (model asp) pos.{q} cc))"
                f" (Str.CharIs y (CharIsAsp (model asp) pos.0 cc))))"
            )
            charm1 = (
                f"(ite (= {ly} pos.2)"
                + (
                    f" (exists ((cc Chr))"
                    f" (and (Str.CharIs x (CharIsAsp (model asp) pos.{q + 1} cc))"
                    f" (Str.CharIs y (CharIsAsp (model asp) pos.1 cc))))"
                    if q + 1 <= B
                    else " false"
                )
                + " true)"
            )
            return (
                f"(and (le.pos (plus.pos pos.{q} {ly}) {lx}) {charm0} {charm1})"
            )

        occ_any = "(or " + " ".join(inline_occ(q) for q in range(B)) + ")"
        arms.append(
            "     ((str.replace x y z)\n"
            f"      (ite (and (le.pos pos.1 {ly}) (le.pos {ly} pos.2) {obs})\n"
            f"       (ite {occ_any} (plus.pos (minus.pos {lx} {ly}) {lz}) {lx})\n"
            "       pos.inv))"
        )
    else:
        arms.append("     ((str.replace x y z) pos.inv)")
    if enable_char_ops:
        arms.append(
            "     ((str.at x i) (ite (ltl.pos (SInt.Sem i asp) (Str.Len x asp)) pos.1 pos.0))"
        )
        arms.append("     ((str.int2str i) (int2str.len (SInt.Sem i asp)))")
    else:
        arms.append("     ((str.at x i) pos.inv)")
        arms.append("     ((str.int2str i) pos.inv)")
    arms.append(
        "     ((str.ite b x y) (ite (SBool.Sem b asp) (Str.Len x asp) (Str.Len y asp)))"
    )
    if enable_char_ops:
        nv = "(SInt.Sem n asp)"
        iv = "(SInt.Sem i asp)"
        lx = "(Str.Len x asp)"
        arms.append(
            "     ((str.substr x i n)\n"
            f"      (ite (= {iv} pos.inv) pos.0\n"
            f"       (ite (= {nv} pos.inv) pos.0\n"
            f"        (ite (lt.pos {lx} {iv}) pos.0\n"
            f"         (ite (le.pos {nv} (minus.pos {lx} {iv})) {nv} (minus.pos {lx} {iv}))))))"
        )
    else:
        arms.append("     ((str.substr x i n) pos.inv)")
    return [
        "(define-semantics",
        "  ((Str.Len (e Str) (asp ExAsp)))",
        "  :returns Pos",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def str_val(n_args: int, constants: list[str]) -> list[str]:
    arms: list[str] = []
    for i in range(len(constants)):
        arms.append(f"     ((str.c{i}) c{i}.val)")
    for i in range(n_args):
        arms.append(f"     ((arg{i}) arg{i}.val)")
    arms.append("     ((str.++ x y) (concat.val (Str.Val x asp) (Str.Val y asp)))")
    arms.append("     ((str.replace x y z) val.unknown)")
    arms.append("     ((str.at x i) val.unknown)")
    arms.append("     ((str.int2str i) val.unknown)")
    arms.append(
        "     ((str.ite b x y) (ite (SBool.Sem b asp) (Str.Val x asp) (Str.Val y asp)))"
    )
    arms.append("     ((str.substr x i n) val.unknown)")
    return [
        "(define-semantics",
        "  ((Str.Val (e Str) (asp ExAsp)))",
        "  :returns Val",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def to_int_expr(B: int) -> str:
    """Unrolled decimal parse of value(x); exact for results <= B, else inv.

    SMT-LIB's -1-on-invalid is conflated with pos.inv, matching how int.neg1
    itself is encoded.
    """
    lenx = "(Str.Len x asp)"
    expr = "pos.inv"
    for v in range(B, 9, -1):  # two-digit values 10..B (first digit is '1')
        cond = (
            f"(and (= {lenx} pos.2)"
            f" (Str.CharIs x (CharIsAsp (model asp) pos.0 chr.d1))"
            f" (Str.CharIs x (CharIsAsp (model asp) pos.1 chr.d{v % 10})))"
        )
        expr = f"(ite {cond} pos.{v} {expr})"
    for v in range(min(B, 9), -1, -1):
        cond = f"(and (= {lenx} pos.1) (Str.CharIs x (CharIsAsp (model asp) pos.0 chr.d{v})))"
        expr = f"(ite {cond} pos.{v} {expr})"
    return expr


def indexof_expr(B: int) -> str:
    """First occurrence of value(y) in value(x) at index >= value(k).

    Needle length capped at 2; a needle with a character outside the
    alphabet is unobservable and yields pos.inv (so is no-occurrence,
    conflated with -1 like everywhere else).  The nested ite scans
    positions upward, so the first matching position wins exactly.
    """
    kv, ly, lx = "(SInt.Sem k asp)", "(Str.Len y asp)", "(Str.Len x asp)"

    def charm(pp: int, j: int) -> str:
        if pp + j > B:
            return "false"
        atom = (
            f"(exists ((cc Chr))"
            f" (and (Str.CharIs x (CharIsAsp (model asp) pos.{pp + j} cc))"
            f" (Str.CharIs y (CharIsAsp (model asp) pos.{j} cc))))"
        )
        if j == 0:
            return atom
        return f"(ite (lt.pos pos.{j} {ly}) {atom} true)"

    scan = "pos.inv"
    for pp in range(B, -1, -1):
        cond = (
            f"(and (le.pos {kv} pos.{pp})"
            f" (le.pos (plus.pos pos.{pp} {ly}) {lx})"
            f" {charm(pp, 0)} {charm(pp, 1)})"
        )
        scan = f"(ite {cond} pos.{pp} {scan})"
    obs = " ".join(
        f"(ite (lt.pos pos.{j} {ly})"
        f" (exists ((cc Chr)) (Str.CharIs y (CharIsAsp (model asp) pos.{j} cc)))"
        f" true)"
        for j in range(2)
    )
    return (
        f"(ite (or (= {kv} pos.inv) (= {lx} pos.inv) (= {ly} pos.inv) (lt.pos pos.2 {ly})) pos.inv "
        f"(ite (= {ly} pos.0) (ite (le.pos {kv} {lx}) {kv} pos.inv) "
        f"(ite (and {obs}) {scan} pos.inv)))"
    )


def sint_sem(enable_charis: bool, B: int) -> list[str]:
    to_int = to_int_expr(B) if enable_charis else "pos.inv"
    indexof = indexof_expr(B) if enable_charis else "pos.inv"
    arms = [
        "     ((int.0) pos.0)",
        "     ((int.1) pos.1)",
        "     ((int.neg1) pos.inv)",
        "     ((int.+ x y) (plus.pos (SInt.Sem x asp) (SInt.Sem y asp)))",
        "     ((int.- x y) (minus.pos (SInt.Sem x asp) (SInt.Sem y asp)))",
        "     ((int.len x) (Str.Len x asp))",
        f"     ((int.to_int x) {to_int})",
        "     ((int.ite b x y) (ite (SBool.Sem b asp) (SInt.Sem x asp) (SInt.Sem y asp)))",
        f"     ((int.indexof x y k) {indexof})",
    ]
    return [
        "(define-semantics",
        "  ((SInt.Sem (e SInt) (asp ExAsp)))",
        "  :returns Pos",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def sbool_sem() -> list[str]:
    arms = [
        "     ((bool.true) true)",
        "     ((bool.false) false)",
        "     ((bool.= x y)\n"
        "      (and (= (SInt.Sem x asp) (SInt.Sem y asp))\n"
        "           (not (= (SInt.Sem x asp) pos.inv))))",
        "     ((bool.prefixof x y) (prefix.val (Str.Val x asp) (Str.Val y asp)))",
        "     ((bool.suffixof x y) (suffix.val (Str.Val x asp) (Str.Val y asp)))",
        "     ((bool.contains x y) (contains.val (Str.Val x asp) (Str.Val y asp)))",
    ]
    return [
        "(define-semantics",
        "  ((SBool.Sem (e SBool) (asp ExAsp)))",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def model_values(constants: list[str], inputs: list[str], output: str) -> list[str]:
    """Val universe: "" plus the whole observed strings.

    Substrings are pointless here: candidate-term values are only ever
    leaves and concats of leaves (at/substr/int2str map to val.unknown),
    so enriching the universe with substrings inflates the tables without
    making any additional predicate observation decidable.  "" matters:
    it enables the concat identity rows v1 was missing.
    """
    values: list[str] = [""]
    for text in [*constants, *inputs, output]:
        if text not in values:
            values.append(text)
    return values


def model_tables(
    model: dict,
    n_args: int,
    constants: list[str],
    B: int,
    enable_char_ops: bool,
    enable_charis: bool = False,
    sigma: list[str] | None = None,
) -> list[str]:
    values = model_values(constants, model["inputs"], model["output"])
    value_index = {value: i for i, value in enumerate(values)}
    output = model["output"]
    out_positions = max(1, len(output))

    lines: list[str] = []
    lines.append(f"(define-model {model['name']}")
    lines.append(
        "  (interp-sort Pos (" + " ".join(pos(i) for i in range(B + 1)) + " $inv))"
    )
    lines.append(
        "  (interp-sort PosOut (" + " ".join(f"$o{i}" for i in range(out_positions)) + "))"
    )
    lines.append(
        "  (interp-sort Val (" + " ".join(val(i) for i in range(len(values))) + " $unknown))"
    )
    if enable_charis:
        lines.append(
            "  (interp-sort Chr (" + " ".join(f"$h{i}" for i in range(len(sigma))) + "))"
        )
    for n in range(B + 1):
        lines.append(f"  (interp-fun {pos_const(n)} ({pos(n)}))")
    lines.append("  (interp-fun pos.inv ($inv))")
    lines.append("  (interp-fun val.unknown ($unknown))")

    le_cases = [((pos(a), pos(b)), "true") for a in range(B + 1) for b in range(a, B + 1)]
    lines.append(f"  (interp-fun le.pos {match_table(le_cases, 'false', 2)})")

    plus_cases = [
        ((pos(a), pos(b)), pos(a + b))
        for a in range(B + 1)
        for b in range(B + 1)
        if a + b <= B
    ]
    lines.append(f"  (interp-fun plus.pos {match_table(plus_cases, '$inv', 2)})")

    minus_cases = [
        ((pos(a), pos(b)), pos(a - b)) for a in range(B + 1) for b in range(B + 1) if b <= a
    ]
    lines.append(f"  (interp-fun minus.pos {match_table(minus_cases, '$inv', 2)})")

    if enable_char_ops:
        lt_cases = [
            ((pos(a), pos(b)), "true") for a in range(B + 1) for b in range(B + 1) if a < b
        ]
        lines.append(f"  (interp-fun lt.pos {match_table(lt_cases, 'false', 2)})")

        ltl_cases = lt_cases + [((pos(a), "$inv"), "true") for a in range(B + 1)]
        lines.append(f"  (interp-fun ltl.pos {match_table(ltl_cases, 'false', 2)})")

        i2slen_cases = [((pos(n),), pos(len(str(n)))) for n in range(B + 1)]
        lines.append(f"  (interp-fun int2str.len {match_table(i2slen_cases, '$inv', 1)})")

        digit_cases = [
            ((pos(n), pos(o)), "true")
            for n in range(min(B, 9) + 1)
            for o, ch in enumerate(output)
            if ch == str(n)
        ]
        lines.append(f"  (interp-fun digit.eq {match_table(digit_cases, 'false', 2)})")

    if enable_charis:
        for d in range(10):
            lines.append(f"  (interp-fun chr.d{d} ({chr_elem(sigma, str(d))}))")
        digit_is = [
            ((pos(n), chr_elem(sigma, str(n)[0])), "true") for n in range(B + 1)
        ]
        lines.append(f"  (interp-fun digit.is {match_table(digit_is, 'false', 2)})")
        if B > 9:
            digit2_is = [
                ((pos(n), chr_elem(sigma, str(n)[1])), "true") for n in range(10, B + 1)
            ]
            lines.append(f"  (interp-fun digit2.is {match_table(digit2_is, 'false', 2)})")

    concat_seen: set[tuple[int, int, int]] = set()
    for left, li in value_index.items():
        for right, ri in value_index.items():
            joined = left + right
            if joined in value_index:
                concat_seen.add((li, ri, value_index[joined]))
    concat_cases = [
        ((val(left), val(right)), val(result)) for left, right, result in sorted(concat_seen)
    ]
    lines.append(f"  (interp-fun concat.val {match_table(concat_cases, '$unknown', 2)})")

    prefix_seen: set[tuple[int, int]] = set()
    suffix_seen: set[tuple[int, int]] = set()
    contains_seen: set[tuple[int, int]] = set()
    for left, li in value_index.items():
        for right, ri in value_index.items():
            if right.startswith(left):
                prefix_seen.add((li, ri))
            if right.endswith(left):
                suffix_seen.add((li, ri))
            if left in right:
                contains_seen.add((li, ri))
    lines.append(
        f"  (interp-fun prefix.val {match_table([((val(a), val(b)), 'true') for a, b in sorted(prefix_seen)], 'false', 2)})"
    )
    lines.append(
        f"  (interp-fun suffix.val {match_table([((val(a), val(b)), 'true') for a, b in sorted(suffix_seen)], 'false', 2)})"
    )
    lines.append(
        f"  (interp-fun contains.val {match_table([((val(a), val(b)), 'true') for a, b in sorted(contains_seen)], 'false', 2)})"
    )

    def eq_cases(text: str) -> list[tuple[tuple[str, ...], str]]:
        return [
            ((pos(a), pos(b)), "true")
            for a in range(len(output) + 1)
            for b in range(a, len(output) + 1)
            if text == output[a:b]
        ]

    def chareq_cases(text: str) -> list[tuple[tuple[str, ...], str]]:
        return [
            ((pos(k), pos(o)), "true")
            for k, ch in enumerate(text)
            if k <= B
            for o, out_ch in enumerate(output)
            if ch == out_ch
        ]

    for i in range(n_args):
        text = model["inputs"][i] if i < len(model["inputs"]) else ""
        lines.append(
            f"  (interp-fun arg{i}.len ({pos(len(text)) if len(text) <= B else '$inv'}))"
        )
        lines.append(
            f"  (interp-fun arg{i}.val ({val(value_index[text]) if text in value_index else '$unknown'}))"
        )
        lines.append(f"  (interp-fun arg{i}.eq {match_table(eq_cases(text), 'false', 2)})")
        if enable_char_ops:
            lines.append(
                f"  (interp-fun arg{i}.chareq {match_table(chareq_cases(text), 'false', 2)})"
            )
        if enable_charis:
            rows = [
                ((pos(k), chr_elem(sigma, ch)), "true")
                for k, ch in enumerate(text)
                if k <= B and ch in sigma
            ]
            lines.append(f"  (interp-fun arg{i}.charis {match_table(rows, 'false', 2)})")

    for i, value in enumerate(constants):
        lines.append(
            f"  (interp-fun c{i}.val ({val(value_index[value]) if value in value_index else '$unknown'}))"
        )
        lines.append(f"  (interp-fun c{i}.eq {match_table(eq_cases(value), 'false', 2)})")
        if enable_char_ops:
            lines.append(
                f"  (interp-fun c{i}.chareq {match_table(chareq_cases(value), 'false', 2)})"
            )
        if enable_charis:
            rows = [
                ((pos(k), chr_elem(sigma, ch)), "true")
                for k, ch in enumerate(value)
                if k <= B and ch in sigma
            ]
            lines.append(f"  (interp-fun c{i}.charis {match_table(rows, 'false', 2)})")

    lines.append(")")
    return lines


def choose_char_ops(
    mode: str,
    constraints: list[tuple[list[str], str]],
    B: int,
    max_out: int,
    budget: int,
) -> bool:
    if mode == "always":
        return True
    if mode == "never":
        return False
    if mode != "auto":
        raise ValueError(f"unknown char-op mode {mode}")
    # Rough per-file state-bit estimate: per model, CharEq contributes
    # |Pos| * max_out bits and Len/SInt |Pos| each.  Past the budget the BV
    # encoding step (not the search) becomes the bottleneck.
    estimate = len(constraints) * (B + 2) * (2 + max_out)
    return estimate <= budget


def emit(
    n_args: int,
    constants: list[str],
    constraints: list[tuple[list[str], str]],
    source: str,
    char_ops: str,
    char_ops_budget: int = 4000,
    charis_budget: int = 3000,
    replace_budget: int = 100,
) -> str:
    L = 1
    for inputs, output in constraints:
        L = max(L, len(output), *(len(s) for s in inputs))
    for value in constants:
        L = max(L, len(value))
    # lengths beyond L occur via concat with short pieces; L + 2 keeps the
    # common patterns exact while keeping |Pos| (and every |Pos|^2 formula
    # expansion) small enough to enable char_ops on large-L cases.
    B = min(2 * L, L + 2)
    max_out = max(len(output) for _, output in constraints)
    max_vals = max(
        len(model_values(constants, inputs, output)) for inputs, output in constraints
    )
    enable_char_ops = choose_char_ops(char_ops, constraints, B, max_out, char_ops_budget)
    sigma = alphabet(constants)
    # CharIs adds |Pos| * |Sigma| bits per model; only worth it (and only
    # referenced) when char_ops is on.
    enable_charis = (
        enable_char_ops and len(constraints) * (B + 2) * len(sigma) <= charis_budget
    )
    # replace arms multiply per-bit formula size by ~B; keep them for small
    # problems only (to_int/indexof stay available under plain charis)
    enable_replace = enable_charis and len(constraints) * B <= replace_budget

    lines: list[str] = []
    lines.append(
        "; Generated by gen_eqstyle.py v2 -- functional Len/Int/Val + demand-style Eq/CharEq"
    )
    if enable_char_ops:
        lines.append(
            "; Exact fragment: variables, constants, concat, ite, at, substr, int2str (single digit), integer equality/length."
        )
    else:
        lines.append("; Exact fragment: variables, constants, concat, ite, integer equality/length.")
    if enable_charis:
        lines.append(
            f"; to_int/indexof (needle<=2) exact via CharIs; replace (needle<=2) {'exact' if enable_replace else 'conservative'}."
        )
    else:
        lines.append("; replace/to_int/indexof are conservative (pos.inv / false).")
    lines.append(
        f"; {n_args} args, {len(constants)} consts, max {max_vals} vals/model, "
        f"{len(constraints)} models, L={L}, B={B}, char_ops={'on' if enable_char_ops else 'off'}, "
        f"charis={'on' if enable_charis else 'off'}, replace={'on' if enable_replace else 'off'}"
    )
    lines.append(f'(set-info :source "{source}")')
    lines.append("")
    lines.extend(term_types(n_args, constants))
    lines.append("")
    lines.extend(string_axioms())
    lines.append("")
    lines.extend(declarations(n_args, constants, B, enable_char_ops, enable_charis))
    lines.append("")
    lines.extend(aspects(enable_char_ops, enable_charis, enable_replace))
    lines.append("")
    lines.extend(str_eq(n_args, constants, max_out, enable_char_ops, enable_replace, B))
    lines.append("")
    if enable_char_ops:
        lines.extend(str_char_eq(n_args, constants, enable_replace, B))
        lines.append("")
    if enable_charis:
        lines.extend(str_char_is(n_args, constants, B))
        lines.append("")
    if enable_replace:
        lines.extend(str_occ_at(n_args, constants))
        lines.append("")
        lines.extend(str_first_occ(n_args, constants, B))
        lines.append("")
        lines.extend(str_obs(n_args, constants))
        lines.append("")
    lines.extend(str_len(n_args, constants, B, enable_char_ops, enable_replace))
    lines.append("")
    lines.extend(str_val(n_args, constants))
    lines.append("")
    lines.extend(sint_sem(enable_charis, B))
    lines.append("")
    lines.extend(sbool_sem())
    lines.append("")

    models = [
        {"name": f"m{i}", "inputs": inputs, "output": output}
        for i, (inputs, output) in enumerate(constraints)
    ]
    for model in models:
        lines.extend(model_tables(model, n_args, constants, B, enable_char_ops, enable_charis, sigma))
        lines.append("")

    args = " ".join(f"(arg{i} Str)" for i in range(n_args))
    lines.append(f"(synth-fun f ({args}) Str)")
    lines.append("")
    for model in models:
        lines.append(
            f"(constraint (Str.Eq f (EqAsp {model['name']} 0 {len(model['output'])})))"
        )
    lines.append("")
    lines.append("(check-synth)")
    return "\n".join(lines) + "\n"


def generate_one(
    input_path: Path,
    output_path: Path,
    char_ops: str,
    source: str | None = None,
    char_ops_budget: int = 4000,
    charis_budget: int = 3000,
    replace_budget: int = 100,
) -> None:
    n_args, constants, constraints = parse_sygus(input_path)
    if not constraints:
        raise ValueError(f"no constraints in {input_path}")
    output_path.write_text(
        emit(
            n_args, constants, constraints, source or input_path.name, char_ops,
            char_ops_budget, charis_budget, replace_budget,
        )
    )


def main() -> None:
    parser = argparse.ArgumentParser(description="Generate eq-style Delis String benchmarks (v2)")
    parser.add_argument("--input", type=Path)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--input-dir", type=Path)
    parser.add_argument("--output-dir", type=Path)
    parser.add_argument("--clean", action="store_true")
    parser.add_argument("--char-ops", choices=["auto", "always", "never"], default="auto")
    parser.add_argument("--source", help="original SyGuS filename for (set-info :source ...)")
    parser.add_argument(
        "--char-ops-budget",
        type=int,
        default=4000,
        help="state-bit estimate limit above which auto mode disables char_ops",
    )
    parser.add_argument(
        "--charis-budget",
        type=int,
        default=3000,
        help="state-bit estimate limit above which CharIs (to_int/indexof) is disabled",
    )
    parser.add_argument(
        "--replace-budget",
        type=int,
        default=100,
        help="models*B limit above which str.replace stays conservative",
    )
    args = parser.parse_args()

    if args.input and args.output:
        generate_one(args.input, args.output, args.char_ops, args.source, args.char_ops_budget, args.charis_budget, args.replace_budget)
        return

    if not args.input_dir or not args.output_dir:
        parser.error("provide either --input/--output or --input-dir/--output-dir")

    args.output_dir.mkdir(parents=True, exist_ok=True)
    if args.clean:
        for old in args.output_dir.glob("*.sl"):
            old.unlink()
    count = 0
    for input_path in sorted(args.input_dir.glob("*.sl")):
        generate_one(
            input_path, args.output_dir / input_path.name, args.char_ops,
            char_ops_budget=args.char_ops_budget, charis_budget=args.charis_budget,
            replace_budget=args.replace_budget,
        )
        count += 1
    readme_src = args.input_dir.parent / "README.md"
    if readme_src.exists():
        shutil.copy2(readme_src, args.output_dir / "README.source.md")
    print(f"generated {count} eq-style String benchmarks in {args.output_dir}")


if __name__ == "__main__":
    try:
        main()
    except Exception as exc:
        print(f"error: {exc}", file=sys.stderr)
        raise
