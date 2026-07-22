#!/usr/bin/env python3
"""Generate demand/equality-style Delis String benchmarks.

This is an experimental alternative to gen_lenchar.py.  It avoids the forward
Len/Char value semantics and instead asks Boolean observations:

    Str.Eq(e, i, j)  value(e) equals the expected-output segment [i, j)
    Str.Len(e, n)    value(e) has length n
    Str.Val(e, v)    value(e) equals a whole finite observed string value
    SInt.Is(e, n)    integer expression e has value n

Positions are a finite model sort `Pos` rather than built-in Int fields.  This
keeps the generated files compact because model facts are ordinary match tables
over `Pos`, not one nullary Boolean per tuple.

Exact fragment in this first prototype:
  strings: variables, constants, concat, ite, at, substr, int2str
  ints:    0, 1, -1 sentinel, plus, minus, len, ite
  bools:   true, false, integer equality, prefix/suffix/contains over whole values

Other String operators are emitted with conservative false semantics for now.

NOTE: this is a reconstruction of the v1 generator (the original was
untracked in git and was replaced in place by v2); kept for reference.
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


def val_unknown() -> str:
    return "val.unknown"


def and_expr(parts: list[str]) -> str:
    if not parts:
        return "true"
    if len(parts) == 1:
        return parts[0]
    return "(and " + " ".join(parts) + ")"


def sexpr_bool(value: bool) -> str:
    return "true" if value else "false"


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
    """Conservative equations shared with the Len/Char String encoding."""
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


def declarations(n_args: int, constants: list[str], L: int, enable_char_ops: bool) -> list[str]:
    lines = ["(declare-sort Pos 0)", "(declare-sort Val 0)", ""]
    for n in range(L + 1):
        lines.append(f"(declare-fun {pos_const(n)} () Pos)")
    lines.append("(declare-fun pos.neg () Pos)")
    lines.append(f"(declare-fun {val_unknown()} () Val)")
    lines.append("(declare-fun le.pos (Pos Pos) Bool)")
    lines.append("(declare-fun plus.pos (Pos Pos) Pos)")
    lines.append("(declare-fun minus.pos (Pos Pos) Pos)")
    if enable_char_ops:
        lines.append("(declare-fun lt.pos (Pos Pos) Bool)")
        lines.append("(declare-fun digit.eq (Pos Pos) Bool)")
    lines.append("(declare-fun concat.val (Val Val) Val)")
    lines.append("(declare-fun prefix.val (Val Val) Bool)")
    lines.append("(declare-fun suffix.val (Val Val) Bool)")
    lines.append("(declare-fun contains.val (Val Val) Bool)")
    for i in range(n_args):
        lines.append(f"(declare-fun arg{i}.len () Pos)")
        lines.append(f"(declare-fun arg{i}.eq (Pos Pos) Bool)")
        if enable_char_ops:
            lines.append(f"(declare-fun arg{i}.chareq (Pos Pos) Bool)")
        lines.append(f"(declare-fun arg{i}.val () Val)")
    for i in range(len(constants)):
        lines.append(f"(declare-fun c{i}.eq (Pos Pos) Bool)")
        if enable_char_ops:
            lines.append(f"(declare-fun c{i}.chareq (Pos Pos) Bool)")
        lines.append(f"(declare-fun c{i}.val () Val)")
    return lines


def aspects(enable_char_ops: bool) -> list[str]:
    lines = [
        "(define-aspects EqAsp (record (model Model) (i Pos) (j Pos)))",
        "(define-aspects LenAsp (record (model Model) (n Pos)))",
        "(define-aspects ValAsp (record (model Model) (v Val)))",
        "(define-aspects BoolAsp (record (model Model)))",
        "(define-aspects IntAsp (record (model Model) (n Pos)))",
    ]
    if enable_char_ops:
        lines.insert(2, "(define-aspects CharEqAsp (record (model Model) (k Pos) (o Pos)))")
    return lines


def out_pos(offset: int) -> str:
    if offset == 0:
        return "(i asp)"
    return f"(plus.pos (i asp) {pos_const(offset)})"


def char_eq_for_output_offsets(source: str, length: str, source_offset: str, L: int) -> str:
    parts: list[str] = []
    for offset in range(L):
        source_pos = source_offset if offset == 0 else f"(plus.pos {source_offset} {pos_const(offset)})"
        parts.append(
            f"(ite (le.pos {pos_const(offset + 1)} {length}) "
            f"(Str.CharEq {source} (CharEqAsp (model asp) {source_pos} {out_pos(offset)})) true)"
        )
    return and_expr(parts)


def digit_pos(value: str, L: int) -> str:
    return "(or " + " ".join(f"(= {value} {pos_const(n)})" for n in range(min(L, 9) + 1)) + ")"


def int2str_len_expr(value: str, L: int) -> str:
    return f"(ite {digit_pos(value, L)} pos.1 pos.0)"


def substr_len_is(source_len: str, start: str, count: str, result_len: str) -> str:
    diff = f"(minus.pos {source_len} {start})"
    valid = f"(and (le.pos pos.0 {start}) (le.pos pos.0 {count}) (le.pos {start} {source_len}))"
    return (
        f"(or (and (not {valid}) (= {result_len} pos.0)) "
        f"(and {valid} "
        f"(or (and (le.pos {count} {diff}) (= {result_len} {count})) "
        f"(and (le.pos {diff} {count}) (= {result_len} {diff})))))"
    )


def str_eq(n_args: int, constants: list[str], L: int, enable_char_ops: bool) -> list[str]:
    arms: list[str] = []
    for i in range(len(constants)):
        arms.append(f"     ((str.c{i}) (c{i}.eq (i asp) (j asp)))")
    for i in range(n_args):
        arms.append(f"     ((arg{i}) (arg{i}.eq (i asp) (j asp)))")
    arms.append(
        "     ((str.++ x y)\n"
        "      (exists ((k Pos))\n"
        "        (and (le.pos (i asp) k)\n"
        "             (le.pos k (j asp))\n"
        "             (Str.Eq x (EqAsp (model asp) (i asp) k))\n"
        "             (Str.Eq y (EqAsp (model asp) k (j asp))))))"
    )
    arms.append("     ((str.replace x y z) false)")
    if enable_char_ops:
        arms.append(
            "     ((str.at x i)\n"
            "      (exists ((iv Pos))\n"
            "        (exists ((lx Pos))\n"
            "          (and (SInt.Is i (IntAsp (model asp) iv))\n"
            "               (Str.Len x (LenAsp (model asp) lx))\n"
            "               (= (minus.pos (j asp) (i asp)) (ite (lt.pos iv lx) pos.1 pos.0))\n"
            "               (ite (le.pos (plus.pos (i asp) pos.1) (j asp))\n"
            "                    (Str.CharEq x (CharEqAsp (model asp) iv (i asp)))\n"
            "                    true)))))"
        )
        arms.append(
            "     ((str.int2str i)\n"
            "      (exists ((iv Pos))\n"
            "        (and (SInt.Is i (IntAsp (model asp) iv))\n"
            f"             (= (minus.pos (j asp) (i asp)) {int2str_len_expr('iv', L)})\n"
            "             (ite (le.pos (plus.pos (i asp) pos.1) (j asp))\n"
            "                  (digit.eq iv (i asp))\n"
            "                  true))))"
        )
    else:
        arms.append("     ((str.at x i) false)")
        arms.append("     ((str.int2str i) false)")
    arms.append(
        "     ((str.ite b x y)\n"
        "      (or (and (SBool.Sem b (BoolAsp (model asp))) (Str.Eq x asp))\n"
        "          (and (not (SBool.Sem b (BoolAsp (model asp)))) (Str.Eq y asp))))"
    )
    if enable_char_ops:
        arms.append(
            "     ((str.substr x i n)\n"
            "      (exists ((iv Pos))\n"
            "        (exists ((nv Pos))\n"
            "          (exists ((lx Pos))\n"
            "            (exists ((rlen Pos))\n"
            "              (and (SInt.Is i (IntAsp (model asp) iv))\n"
            "                   (SInt.Is n (IntAsp (model asp) nv))\n"
            "                   (Str.Len x (LenAsp (model asp) lx))\n"
            f"                   {substr_len_is('lx', 'iv', 'nv', 'rlen')}\n"
            "                   (= (minus.pos (j asp) (i asp)) rlen)\n"
            f"                   {char_eq_for_output_offsets('x', 'rlen', 'iv', L)}))))))"
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


def str_char_eq(n_args: int, constants: list[str], L: int) -> list[str]:
    arms: list[str] = []
    for i in range(len(constants)):
        arms.append(f"     ((str.c{i}) (c{i}.chareq (k asp) (o asp)))")
    for i in range(n_args):
        arms.append(f"     ((arg{i}) (arg{i}.chareq (k asp) (o asp)))")
    arms.append(
        "     ((str.++ x y)\n"
        "      (exists ((lx Pos))\n"
        "        (and (Str.Len x (LenAsp (model asp) lx))\n"
        "             (or (and (lt.pos (k asp) lx)\n"
        "                      (Str.CharEq x asp))\n"
        "                 (and (le.pos lx (k asp))\n"
        "                      (Str.CharEq y (CharEqAsp (model asp) (minus.pos (k asp) lx) (o asp))))))))"
    )
    arms.append("     ((str.replace x y z) false)")
    arms.append(
        "     ((str.at x i)\n"
        "      (exists ((iv Pos))\n"
        "        (and (= (k asp) pos.0)\n"
        "             (SInt.Is i (IntAsp (model asp) iv))\n"
        "             (Str.CharEq x (CharEqAsp (model asp) iv (o asp))))))"
    )
    arms.append(
        "     ((str.int2str i)\n"
        "      (exists ((iv Pos))\n"
        "        (and (= (k asp) pos.0)\n"
        "             (SInt.Is i (IntAsp (model asp) iv))\n"
        "             (digit.eq iv (o asp)))))"
    )
    arms.append(
        "     ((str.ite b x y)\n"
        "      (or (and (SBool.Sem b (BoolAsp (model asp))) (Str.CharEq x asp))\n"
        "          (and (not (SBool.Sem b (BoolAsp (model asp)))) (Str.CharEq y asp))))"
    )
    arms.append(
        "     ((str.substr x i n)\n"
        "      (exists ((iv Pos))\n"
        "        (exists ((nv Pos))\n"
        "          (exists ((lx Pos))\n"
        "            (exists ((rlen Pos))\n"
        "              (and (SInt.Is i (IntAsp (model asp) iv))\n"
        "                   (SInt.Is n (IntAsp (model asp) nv))\n"
        "                   (Str.Len x (LenAsp (model asp) lx))\n"
        f"                   {substr_len_is('lx', 'iv', 'nv', 'rlen')}\n"
        "                   (lt.pos (k asp) rlen)\n"
        "                   (Str.CharEq x (CharEqAsp (model asp) (plus.pos iv (k asp)) (o asp)))))))))"
    )
    return [
        "(define-semantics",
        "  ((Str.CharEq (e Str) (asp CharEqAsp)))",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def str_val(n_args: int, constants: list[str]) -> list[str]:
    arms: list[str] = []
    for i in range(len(constants)):
        arms.append(f"     ((str.c{i}) (= (v asp) c{i}.val))")
    for i in range(n_args):
        arms.append(f"     ((arg{i}) (= (v asp) arg{i}.val))")
    arms.append(
        "     ((str.++ x y)\n"
        "      (exists ((vx Val))\n"
        "        (exists ((vy Val))\n"
        "          (and (Str.Val x (ValAsp (model asp) vx))\n"
        "               (Str.Val y (ValAsp (model asp) vy))\n"
        "               (= (v asp) (concat.val vx vy))))))"
    )
    arms.append("     ((str.replace x y z) false)")
    arms.append("     ((str.at x i) false)")
    arms.append("     ((str.int2str i) false)")
    arms.append(
        "     ((str.ite b x y)\n"
        "      (or (and (SBool.Sem b (BoolAsp (model asp))) (Str.Val x asp))\n"
        "          (and (not (SBool.Sem b (BoolAsp (model asp)))) (Str.Val y asp))))"
    )
    arms.append("     ((str.substr x i n) false)")
    return [
        "(define-semantics",
        "  ((Str.Val (e Str) (asp ValAsp)))",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def str_len(n_args: int, constants: list[str], L: int, enable_char_ops: bool) -> list[str]:
    arms: list[str] = []
    for i, value in enumerate(constants):
        arms.append(
            f"     ((str.c{i}) (= (n asp) {pos_const(len(value)) if len(value) <= L else 'pos.neg'}))"
        )
    for i in range(n_args):
        arms.append(f"     ((arg{i}) (= (n asp) arg{i}.len))")
    arms.append(
        "     ((str.++ x y)\n"
        "      (exists ((k Pos))\n"
        "        (and (Str.Len x (LenAsp (model asp) k))\n"
        "             (Str.Len y (LenAsp (model asp) (minus.pos (n asp) k))))))"
    )
    arms.append("     ((str.replace x y z) false)")
    if enable_char_ops:
        arms.append(
            "     ((str.at x i)\n"
            "      (exists ((iv Pos))\n"
            "        (exists ((lx Pos))\n"
            "          (and (SInt.Is i (IntAsp (model asp) iv))\n"
            "               (Str.Len x (LenAsp (model asp) lx))\n"
            "               (= (n asp) (ite (lt.pos iv lx) pos.1 pos.0))))))"
        )
        arms.append(
            "     ((str.int2str i)\n"
            "      (exists ((iv Pos))\n"
            "        (and (SInt.Is i (IntAsp (model asp) iv))\n"
            f"             (= (n asp) {int2str_len_expr('iv', L)}))))"
        )
    else:
        arms.append("     ((str.at x i) false)")
        arms.append("     ((str.int2str i) false)")
    arms.append(
        "     ((str.ite b x y)\n"
        "      (or (and (SBool.Sem b (BoolAsp (model asp))) (Str.Len x asp))\n"
        "          (and (not (SBool.Sem b (BoolAsp (model asp)))) (Str.Len y asp))))"
    )
    if enable_char_ops:
        arms.append(
            "     ((str.substr x i n)\n"
            "      (exists ((iv Pos))\n"
            "        (exists ((nv Pos))\n"
            "          (exists ((lx Pos))\n"
            "            (and (SInt.Is i (IntAsp (model asp) iv))\n"
            "                 (SInt.Is n (IntAsp (model asp) nv))\n"
            "                 (Str.Len x (LenAsp (model asp) lx))\n"
            f"                 {substr_len_is('lx', 'iv', 'nv', '(n asp)')})))))"
        )
    else:
        arms.append("     ((str.substr x i n) false)")
    return [
        "(define-semantics",
        "  ((Str.Len (e Str) (asp LenAsp)))",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def sint_is() -> list[str]:
    arms = [
        "     ((int.0) (= (n asp) pos.0))",
        "     ((int.1) (= (n asp) pos.1))",
        "     ((int.neg1) (= (n asp) pos.neg))",
        "     ((int.+ x y)\n"
        "      (exists ((a Pos))\n"
        "        (exists ((b Pos))\n"
        "          (and (SInt.Is x (IntAsp (model asp) a))\n"
        "               (SInt.Is y (IntAsp (model asp) b))\n"
        "               (= (n asp) (plus.pos a b))))))",
        "     ((int.- x y)\n"
        "      (exists ((a Pos))\n"
        "        (exists ((b Pos))\n"
        "          (and (SInt.Is x (IntAsp (model asp) a))\n"
        "               (SInt.Is y (IntAsp (model asp) b))\n"
        "               (= (n asp) (minus.pos a b))))))",
        "     ((int.len x) (Str.Len x (LenAsp (model asp) (n asp))))",
        "     ((int.to_int x) false)",
        "     ((int.ite b x y)\n"
        "      (or (and (SBool.Sem b (BoolAsp (model asp))) (SInt.Is x asp))\n"
        "          (and (not (SBool.Sem b (BoolAsp (model asp)))) (SInt.Is y asp))))",
        "     ((int.indexof x y k) false)",
    ]
    return [
        "(define-semantics",
        "  ((SInt.Is (e SInt) (asp IntAsp)))",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def sbool_sem() -> list[str]:
    arms = [
        "     ((bool.true) true)",
        "     ((bool.false) false)",
        "     ((bool.= x y)\n"
        "      (exists ((k Pos))\n"
        "        (and (SInt.Is x (IntAsp (model asp) k))\n"
        "             (SInt.Is y (IntAsp (model asp) k)))))",
        "     ((bool.prefixof x y)\n"
        "      (exists ((vx Val))\n"
        "        (exists ((vy Val))\n"
        "          (and (Str.Val x (ValAsp (model asp) vx))\n"
        "               (Str.Val y (ValAsp (model asp) vy))\n"
        "               (prefix.val vx vy)))))",
        "     ((bool.suffixof x y)\n"
        "      (exists ((vx Val))\n"
        "        (exists ((vy Val))\n"
        "          (and (Str.Val x (ValAsp (model asp) vx))\n"
        "               (Str.Val y (ValAsp (model asp) vy))\n"
        "               (suffix.val vx vy)))))",
        "     ((bool.contains x y)\n"
        "      (exists ((vx Val))\n"
        "        (exists ((vy Val))\n"
        "          (and (Str.Val x (ValAsp (model asp) vx))\n"
        "               (Str.Val y (ValAsp (model asp) vy))\n"
        "               (contains.val vx vy)))))",
    ]
    return [
        "(define-semantics",
        "  ((SBool.Sem (e SBool) (asp BoolAsp)))",
        "  ((match e",
        "\n".join(arms),
        "  )))",
    ]


def model_values(constants: list[str], inputs: list[str], output: str) -> list[str]:
    values: list[str] = []

    def add(value: str) -> None:
        if value not in values:
            values.append(value)

    for value in constants:
        add(value)
    for value in inputs:
        add(value)
    add(output)
    return values


def model_tables(model: dict, n_args: int, constants: list[str], L: int, enable_char_ops: bool) -> list[str]:
    values = model_values(constants, model["inputs"], model["output"])
    value_index = {value: i for i, value in enumerate(values)}

    lines: list[str] = []
    lines.append(f"(define-model {model['name']}")
    lines.append("  (interp-sort Pos (" + " ".join(pos(i) for i in range(L + 1)) + " $neg))")
    lines.append("  (interp-sort Val (" + " ".join(val(i) for i in range(len(values))) + " $unknown))")
    for n in range(L + 1):
        lines.append(f"  (interp-fun {pos_const(n)} ({pos(n)}))")
    lines.append("  (interp-fun pos.neg ($neg))")
    lines.append(f"  (interp-fun {val_unknown()} ($unknown))")

    le_cases = [
        ((pos(a), pos(b)), "true")
        for a in range(L + 1)
        for b in range(L + 1)
        if a <= b
    ]
    lines.append(f"  (interp-fun le.pos {match_table(le_cases, 'false', 2)})")

    if enable_char_ops:
        lt_cases = [
            ((pos(a), pos(b)), "true")
            for a in range(L + 1)
            for b in range(L + 1)
            if a < b
        ]
        lines.append(f"  (interp-fun lt.pos {match_table(lt_cases, 'false', 2)})")

    plus_cases = [
        ((pos(a), pos(b)), pos(a + b))
        for a in range(L + 1)
        for b in range(L + 1)
        if a + b <= L
    ]
    lines.append(f"  (interp-fun plus.pos {match_table(plus_cases, '$neg', 2)})")

    minus_cases = [
        ((pos(a), pos(b)), pos(a - b))
        for a in range(L + 1)
        for b in range(L + 1)
        if b <= a
    ]
    lines.append(f"  (interp-fun minus.pos {match_table(minus_cases, '$neg', 2)})")

    output = model["output"]
    if enable_char_ops:
        digit_cases = [
            ((pos(n), pos(k)), "true")
            for n in range(min(L, 9) + 1)
            for k, ch in enumerate(output)
            if ch == str(n)
        ]
        lines.append(f"  (interp-fun digit.eq {match_table(digit_cases, 'false', 2)})")

    concat_seen: set[tuple[int, int, int]] = set()
    for result_index, result in enumerate(values):
        for split in range(len(result) + 1):
            left = result[:split]
            right = result[split:]
            if left in value_index and right in value_index:
                concat_seen.add((value_index[left], value_index[right], result_index))
    concat_cases = [((val(left), val(right)), val(result)) for left, right, result in sorted(concat_seen)]
    lines.append(f"  (interp-fun concat.val {match_table(concat_cases, '$unknown', 2)})")

    prefix_seen: set[tuple[int, int]] = set()
    suffix_seen: set[tuple[int, int]] = set()
    contains_seen: set[tuple[int, int]] = set()
    for right_index, right in enumerate(values):
        for split in range(len(right) + 1):
            prefix = right[:split]
            suffix = right[len(right) - split :]
            if prefix in value_index:
                prefix_seen.add((value_index[prefix], right_index))
            if suffix in value_index:
                suffix_seen.add((value_index[suffix], right_index))
        for start in range(len(right) + 1):
            for end in range(start, len(right) + 1):
                substring = right[start:end]
                if substring in value_index:
                    contains_seen.add((value_index[substring], right_index))

    prefix_cases = [((val(left), val(right)), "true") for left, right in sorted(prefix_seen)]
    lines.append(f"  (interp-fun prefix.val {match_table(prefix_cases, 'false', 2)})")

    suffix_cases = [((val(left), val(right)), "true") for left, right in sorted(suffix_seen)]
    lines.append(f"  (interp-fun suffix.val {match_table(suffix_cases, 'false', 2)})")

    contains_cases = [((val(left), val(right)), "true") for left, right in sorted(contains_seen)]
    lines.append(f"  (interp-fun contains.val {match_table(contains_cases, 'false', 2)})")

    for i in range(n_args):
        text = model["inputs"][i] if i < len(model["inputs"]) else ""
        lines.append(f"  (interp-fun arg{i}.len ({pos(len(text)) if len(text) <= L else '$neg'}))")
        lines.append(f"  (interp-fun arg{i}.val ({val(value_index[text]) if text in value_index else '$unknown'}))")
        cases = [
            ((pos(a), pos(b)), "true")
            for a in range(L + 1)
            for b in range(a, L + 1)
            if b <= len(output) and text == output[a:b]
        ]
        lines.append(f"  (interp-fun arg{i}.eq {match_table(cases, 'false', 2)})")
        if enable_char_ops:
            char_cases = [
                ((pos(k), pos(o)), "true")
                for k, ch in enumerate(text)
                for o, out_ch in enumerate(output)
                if ch == out_ch
            ]
            lines.append(f"  (interp-fun arg{i}.chareq {match_table(char_cases, 'false', 2)})")

    for i, value in enumerate(constants):
        lines.append(f"  (interp-fun c{i}.val ({val(value_index[value]) if value in value_index else '$unknown'}))")
        cases = [
            ((pos(a), pos(b)), "true")
            for a in range(L + 1)
            for b in range(a, L + 1)
            if b <= len(output) and value == output[a:b]
        ]
        lines.append(f"  (interp-fun c{i}.eq {match_table(cases, 'false', 2)})")
        if enable_char_ops:
            char_cases = [
                ((pos(k), pos(o)), "true")
                for k, ch in enumerate(value)
                for o, out_ch in enumerate(output)
                if ch == out_ch
            ]
            lines.append(f"  (interp-fun c{i}.chareq {match_table(char_cases, 'false', 2)})")

    lines.append(")")
    return lines


def choose_char_ops(
    mode: str, n_args: int, constants: list[str], constraints: list[tuple[list[str], str]], L: int
) -> bool:
    if mode == "always":
        return True
    if mode == "never":
        return False
    if mode != "auto":
        raise ValueError(f"unknown char-op mode {mode}")
    return n_args == 1 and not constants and L <= 5


def emit(
    n_args: int,
    constants: list[str],
    constraints: list[tuple[list[str], str]],
    source: str,
    char_ops: str,
) -> str:
    L = 1
    for inputs, output in constraints:
        L = max(L, len(output), *(len(s) for s in inputs))
    max_vals = max(len(model_values(constants, inputs, output)) for inputs, output in constraints)
    enable_char_ops = choose_char_ops(char_ops, n_args, constants, constraints, L)

    lines: list[str] = []
    lines.append("; Generated by gen_eqstyle.py -- compact demand/equality-style String semantics")
    if enable_char_ops:
        lines.append("; Exact fragment: variables, constants, concat, ite, at, substr, int2str, integer equality/length.")
    else:
        lines.append("; Exact fragment: variables, constants, concat, ite, integer equality/length.")
    lines.append("; String predicates use whole-value observations; replace/to_int/indexof are conservative false.")
    lines.append(
        f"; {n_args} args, {len(constants)} consts, max {max_vals} vals/model, "
        f"{len(constraints)} models, L={L}, char_ops={'on' if enable_char_ops else 'off'}"
    )
    lines.append(f'(set-info :source "{source}")')
    lines.append("")
    lines.extend(term_types(n_args, constants))
    lines.append("")
    lines.extend(string_axioms())
    lines.append("")
    lines.extend(declarations(n_args, constants, L, enable_char_ops))
    lines.append("")
    lines.extend(aspects(enable_char_ops))
    lines.append("")
    lines.extend(str_eq(n_args, constants, L, enable_char_ops))
    lines.append("")
    if enable_char_ops:
        lines.extend(str_char_eq(n_args, constants, L))
        lines.append("")
    lines.extend(str_val(n_args, constants))
    lines.append("")
    lines.extend(str_len(n_args, constants, L, enable_char_ops))
    lines.append("")
    lines.extend(sint_is())
    lines.append("")
    lines.extend(sbool_sem())
    lines.append("")

    models = [
        {"name": f"m{i}", "inputs": inputs, "output": output}
        for i, (inputs, output) in enumerate(constraints)
    ]
    for model in models:
        lines.extend(model_tables(model, n_args, constants, L, enable_char_ops))
        lines.append("")

    args = " ".join(f"(arg{i} Str)" for i in range(n_args))
    lines.append(f"(synth-fun f ({args}) Str)")
    lines.append("")
    for model in models:
        lines.append(f"(constraint (Str.Eq f (EqAsp {model['name']} $0 {pos(len(model['output']))})))")
    lines.append("")
    lines.append("(check-synth)")
    return "\n".join(lines) + "\n"


def generate_one(input_path: Path, output_path: Path, char_ops: str) -> None:
    n_args, constants, constraints = parse_sygus(input_path)
    if not constraints:
        raise ValueError(f"no constraints in {input_path}")
    output_path.write_text(emit(n_args, constants, constraints, input_path.name, char_ops))


def main() -> None:
    parser = argparse.ArgumentParser(description="Generate eq-style Delis String benchmarks")
    parser.add_argument("--input", type=Path)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--input-dir", type=Path)
    parser.add_argument("--output-dir", type=Path)
    parser.add_argument("--clean", action="store_true")
    parser.add_argument("--char-ops", choices=["auto", "always", "never"], default="auto")
    args = parser.parse_args()

    if args.input and args.output:
        generate_one(args.input, args.output, args.char_ops)
        return

    if not args.input_dir or not args.output_dir:
        parser.error("provide either --input/--output or --input-dir/--output-dir")

    args.output_dir.mkdir(parents=True, exist_ok=True)
    if args.clean:
        for old in args.output_dir.glob("*.sl"):
            old.unlink()
    count = 0
    for input_path in sorted(args.input_dir.glob("*.sl")):
        generate_one(input_path, args.output_dir / input_path.name, args.char_ops)
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
