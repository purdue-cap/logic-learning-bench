#!/usr/bin/env python3
"""Generate native SemGuS string-transformation benchmarks from SyGuS SLIA.

This is an experimental companion to String/scripts/gen_lenchar.py.  It keeps
the same bounded value idea but emits SemGuS CHC relations instead of the Delis
finite-model DSL:

  Start.Sem : Start x examples x expected-output -> Bool
  Str.Val   : Str   x examples -> (length, char_0, ..., char_L)
  SInt.Val  : SInt  x examples -> bounded integer
  SBool.Sem : SBool x examples -> Bool

Characters and indices are represented as nonnegative Int values.  Character 0
is used as padding.  The synthetic index values L+1 and L+2 stand for neg1 and
bot respectively, avoiding negative integer constants in generated grammars.
"""

from __future__ import annotations

import argparse
import re
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
STRING = ROOT / "String"
DEFAULT_IN = STRING / "sygus"
DEFAULT_OUT = STRING / "semgus"


@dataclass(frozen=True)
class SygusCase:
    n_args: int
    constants: list[str]
    examples: list[tuple[list[str], str]]


def parse_sygus(path: Path) -> SygusCase:
    text = path.read_text()
    m = re.search(r"\(synth-fun\s+(\w+)\s*\(((?:\([^)]*\)\s*)*)\)", text)
    if not m:
        raise ValueError(f"no synth-fun in {path}")
    fname = m.group(1)
    arg_names = re.findall(r"\((\w+)\s+String\)", m.group(2).strip())

    constants: list[str] = []
    m2 = re.search(
        r"ntString\s+String\s*\(([^)]*(?:\([^)]*\))*[^)]*)\)",
        text,
        re.DOTALL,
    )
    if m2:
        for s in re.findall(r'"((?:[^"\\]|\\.)*)"', m2.group(1)):
            u = unescape_str(s)
            if u not in arg_names and u not in constants:
                constants.append(u)

    examples: list[tuple[list[str], str]] = []
    constraint_re = re.compile(
        rf'\(constraint\s+\(=\s+\({re.escape(fname)}\s+(.*?)\)\s+"((?:[^"\\]|\\.)*)"\s*\)\s*\)',
        re.DOTALL,
    )
    for cm in constraint_re.finditer(text):
        out = unescape_str(cm.group(2))
        inputs = [unescape_str(s) for s in re.findall(r'"((?:[^"\\]|\\.)*)"', cm.group(1))]
        if len(inputs) != len(arg_names):
            raise ValueError(f"{path}: expected {len(arg_names)} inputs, got {len(inputs)}")
        examples.append((inputs, out))

    seen: set[tuple[tuple[str, ...], str]] = set()
    deduped: list[tuple[list[str], str]] = []
    for inputs, out in examples:
        key = (tuple(inputs), out)
        if key not in seen:
            seen.add(key)
            deduped.append((inputs, out))
    if not deduped:
        raise ValueError(f"no usable constraints in {path}")
    return SygusCase(len(arg_names), constants, deduped)


def unescape_str(s: str) -> str:
    return (
        s.replace("\\\\", "\0")
        .replace('\\"', '"')
        .replace("\\n", "\n")
        .replace("\\t", "\t")
        .replace("\0", "\\")
    )


def atom_and(parts: list[str]) -> str:
    parts = [p for p in parts if p]
    if not parts:
        return "true"
    if len(parts) == 1:
        return parts[0]
    return f"(and {' '.join(parts)})"


def atom_or(parts: list[str]) -> str:
    parts = [p for p in parts if p]
    if not parts:
        return "false"
    if len(parts) == 1:
        return parts[0]
    return f"(or {' '.join(parts)})"


def eq(lhs: str, rhs: str | int) -> str:
    return f"(= {lhs} {rhs})"


def ite(cond: str, then_expr: str | int, else_expr: str | int) -> str:
    return f"(ite {cond} {then_expr} {else_expr})"


def valid_idx(expr: str, l_bound: int) -> str:
    return f"(and (<= 0 {expr}) (<= {expr} {l_bound}))"


def idx_plus(lhs: str, rhs: str, l_bound: int, bot: int) -> str:
    cond = atom_and([valid_idx(lhs, l_bound), valid_idx(rhs, l_bound), f"(<= (+ {lhs} {rhs}) {l_bound})"])
    return ite(cond, f"(+ {lhs} {rhs})", bot)


def idx_minus(lhs: str, rhs: str, l_bound: int, bot: int) -> str:
    cond = atom_and([valid_idx(lhs, l_bound), valid_idx(rhs, l_bound), f"(<= {rhs} {lhs})"])
    return ite(cond, f"(- {lhs} {rhs})", bot)


def input_names(n_args: int, l_bound: int) -> list[str]:
    names: list[str] = []
    for arg in range(n_args):
        names.append(f"arg{arg}_len")
        names.extend(f"arg{arg}_{k}" for k in range(l_bound + 1))
    return names


def expected_names(l_bound: int) -> list[str]:
    return ["out_len", *[f"out_{k}" for k in range(l_bound + 1)]]


def value_names(prefix: str, l_bound: int) -> list[str]:
    return [f"{prefix}_len", *[f"{prefix}_{k}" for k in range(l_bound + 1)]]


def typed_ints(names: list[str]) -> str:
    return " ".join(f"({name} Int)" for name in names)


def typed_bool(name: str) -> str:
    return f"({name} Bool)"


def str_val_call(term: str, prefix: str, n_args: int, l_bound: int) -> str:
    return " ".join(["(Str.Val", term, *input_names(n_args, l_bound), *value_names(prefix, l_bound)]) + ")"


def sint_val_call(term: str, out: str, n_args: int, l_bound: int) -> str:
    return " ".join(["(SInt.Val", term, *input_names(n_args, l_bound), out]) + ")"


def sbool_call(term: str, out: str, n_args: int, l_bound: int) -> str:
    return " ".join(["(SBool.Sem", term, *input_names(n_args, l_bound), out]) + ")"


def literal_equalities(prefix: str, text: str, l_bound: int, bot: int) -> list[str]:
    length = len(text) if len(text) <= l_bound else bot
    eqs = [eq(f"{prefix}_len", length)]
    for k in range(l_bound + 1):
        code = ord(text[k]) if k < len(text) else 0
        eqs.append(eq(f"{prefix}_{k}", code))
    return eqs


def arg_equalities(prefix: str, arg: int, l_bound: int) -> list[str]:
    eqs = [eq(f"{prefix}_len", f"arg{arg}_len")]
    for k in range(l_bound + 1):
        eqs.append(eq(f"{prefix}_{k}", f"arg{arg}_{k}"))
    return eqs


def concat_char(k: int, left: str, right: str, l_bound: int) -> str:
    expr = "0"
    for llen in range(l_bound, -1, -1):
        branch = f"{left}_{k}" if k < llen else f"{right}_{k - llen}"
        expr = ite(eq(f"{left}_len", llen), branch, expr)
    return expr


def substr_len(source_len: str, start: str, count: str, l_bound: int) -> str:
    valid = atom_and(
        [
            valid_idx(source_len, l_bound),
            valid_idx(start, l_bound),
            valid_idx(count, l_bound),
            f"(<= {start} {source_len})",
        ]
    )
    clamped = ite(f"(<= (+ {start} {count}) {source_len})", count, f"(- {source_len} {start})")
    return ite(valid, clamped, 0)


def substr_char(k: int, source: str, start: str, length_expr: str, l_bound: int) -> str:
    expr = "0"
    for start_value in range(l_bound, -1, -1):
        src_k = start_value + k
        branch = f"{source}_{src_k}" if src_k <= l_bound else "0"
        expr = ite(atom_and([eq(start, start_value), f"(< {k} {length_expr})"]), branch, expr)
    return expr


def at_len(source_len: str, index: str, l_bound: int) -> str:
    return ite(atom_and([valid_idx(source_len, l_bound), valid_idx(index, l_bound), f"(< {index} {source_len})"]), 1, 0)


def at_char(index: str, source: str, l_bound: int) -> str:
    expr = "0"
    for i in range(l_bound, -1, -1):
        expr = ite(eq(index, i), f"{source}_{i}", expr)
    return expr


def enum_int(expr: str, branches: list[tuple[int, str | int]], default: str | int) -> str:
    out = str(default)
    for value, branch in reversed(branches):
        out = ite(eq(expr, value), branch, out)
    return out


def select_char(prefix: str, index_expr: str, l_bound: int) -> str:
    return enum_int(index_expr, [(i, f"{prefix}_{i}") for i in range(l_bound + 1)], 0)


def replace_raw_len(source: str, needle: str, replacement: str) -> str:
    return f"(+ (- {source}_len {needle}_len) {replacement}_len)"


def valid_replace(pos: str, source: str, needle: str, replacement: str, l_bound: int) -> str:
    raw_len = replace_raw_len(source, needle, replacement)
    return atom_and(
        [
            valid_idx(pos, l_bound),
            valid_idx(f"{source}_len", l_bound),
            valid_idx(f"{needle}_len", l_bound),
            valid_idx(f"{replacement}_len", l_bound),
            f"(<= {needle}_len {source}_len)",
            f"(<= {raw_len} {l_bound})",
        ]
    )


def replace_len_expr(pos: str, source: str, needle: str, replacement: str, l_bound: int, neg1: int, bot: int) -> str:
    raw_len = replace_raw_len(source, needle, replacement)
    return ite(eq(pos, neg1), f"{source}_len", ite(valid_replace(pos, source, needle, replacement, l_bound), raw_len, bot))


def replace_char_expr(k: int, pos: str, source: str, needle: str, replacement: str, l_bound: int, neg1: int) -> str:
    raw_len = replace_raw_len(source, needle, replacement)
    suffix_source_idx = f"(+ (- {k} {replacement}_len) {needle}_len)"
    suffix_char = ite(f"(< {k} {raw_len})", select_char(source, suffix_source_idx, l_bound), 0)
    branches: list[tuple[int, str]] = []
    for p in range(l_bound + 1):
        if k < p:
            branches.append((p, f"{source}_{k}"))
            continue
        replacement_idx = k - p
        replacement_char = f"{replacement}_{replacement_idx}"
        branches.append((p, ite(f"(< {k} (+ {p} {replacement}_len))", replacement_char, suffix_char)))
    return ite(
        eq(pos, neg1),
        f"{source}_{k}",
        ite(valid_replace(pos, source, needle, replacement, l_bound), enum_int(pos, branches, 0), 0),
    )


def int2str_len(value: str, l_bound: int) -> str:
    return enum_int(value, [(i, len(str(i))) for i in range(l_bound + 1)], 0)


def int2str_char(k: int, value: str, l_bound: int) -> str:
    branches = []
    for i in range(l_bound + 1):
        digits = str(i)
        branches.append((i, ord(digits[k]) if k < len(digits) else 0))
    return enum_int(value, branches, 0)


def decimal_match(value: int, source: str) -> str:
    digits = str(value)
    parts = [eq(f"{source}_len", len(digits))]
    parts.extend(eq(f"{source}_{k}", ord(ch)) for k, ch in enumerate(digits))
    return atom_and(parts)


def to_int_expr(source: str, l_bound: int, neg1: int) -> str:
    expr: str | int = neg1
    for value in range(l_bound, -1, -1):
        expr = ite(decimal_match(value, source), value, expr)
    return str(expr)


def match_at(pos: int, haystack: str, needle: str, l_bound: int) -> str:
    parts = [
        valid_idx(f"{haystack}_len", l_bound),
        valid_idx(f"{needle}_len", l_bound),
        f"(<= (+ {pos} {needle}_len) {haystack}_len)",
    ]
    for j in range(l_bound + 1):
        if pos + j > l_bound:
            break
        cmp = eq(f"{haystack}_{pos + j}", f"{needle}_{j}")
        parts.append(ite(f"(< {j} {needle}_len)", cmp, "true"))
    return atom_and(parts)


def indexof_expr(haystack: str, needle: str, start: str, l_bound: int, neg1: int) -> str:
    expr: str | int = neg1
    for pos in range(l_bound, -1, -1):
        cond = atom_and([valid_idx(start, l_bound), f"(<= {start} {pos})", match_at(pos, haystack, needle, l_bound)])
        expr = ite(cond, pos, expr)
    return str(expr)


def prefixof_expr(prefix: str, whole: str, l_bound: int) -> str:
    parts = [
        valid_idx(f"{prefix}_len", l_bound),
        valid_idx(f"{whole}_len", l_bound),
        f"(<= {prefix}_len {whole}_len)",
    ]
    for k in range(l_bound + 1):
        parts.append(ite(f"(< {k} {prefix}_len)", eq(f"{prefix}_{k}", f"{whole}_{k}"), "true"))
    return atom_and(parts)


def suffixof_expr(suffix: str, whole: str, l_bound: int) -> str:
    head = atom_and(
        [
            valid_idx(f"{suffix}_len", l_bound),
            valid_idx(f"{whole}_len", l_bound),
            f"(<= {suffix}_len {whole}_len)",
        ]
    )
    offset = f"(- {whole}_len {suffix}_len)"
    branches: list[tuple[int, str]] = []
    for off in range(l_bound + 1):
        parts = []
        for k in range(l_bound + 1):
            if off + k > l_bound:
                break
            parts.append(ite(f"(< {k} {suffix}_len)", eq(f"{suffix}_{k}", f"{whole}_{off + k}"), "true"))
        branches.append((off, atom_and(parts)))
    return atom_and([head, enum_int(offset, branches, "false")])


def contains_expr(haystack: str, needle: str, l_bound: int) -> str:
    return atom_or([match_at(pos, haystack, needle, l_bound) for pos in range(l_bound + 1)])


def start_sem(n_args: int, l_bound: int) -> str:
    r_vars = value_names("R", l_bound)
    eqs = [eq("R_len", "out_len")]
    eqs.extend(eq(f"R_{k}", f"out_{k}") for k in range(l_bound + 1))
    body = atom_and([str_val_call("e", "R", n_args, l_bound), eq("result", atom_and(eqs))])
    return f"""(! (match t (
            (($eval e)
                (exists
                    ({typed_ints(r_vars)})
                    {body}
                )
            )
        )) :input ({' '.join([*input_names(n_args, l_bound), *expected_names(l_bound)])}) :output (result))"""


def str_val_sem(n_args: int, constants: list[str], l_bound: int, bot: int) -> str:
    out = "R"
    cases: list[str] = []
    for idx, const in enumerate(constants):
        cases.append(f"""            (str.c{idx}
                {atom_and(literal_equalities(out, const, l_bound, bot))}
            )""")
    for idx in range(n_args):
        cases.append(f"""            (arg{idx}
                {atom_and(arg_equalities(out, idx, l_bound))}
            )""")

    a_vars = value_names("A", l_bound)
    b_vars = value_names("B", l_bound)
    c_vars = value_names("C", l_bound)
    i_vars = ["I", "N"]
    bool_vars = ["P"]

    concat_eqs = [eq("R_len", idx_plus("A_len", "B_len", l_bound, bot))]
    concat_eqs.extend(eq(f"R_{k}", concat_char(k, "A", "B", l_bound)) for k in range(l_bound + 1))
    cases.append(f"""            ((str.++ x y)
                (exists
                    ({typed_ints(a_vars + b_vars)})
                    {atom_and([str_val_call('x', 'A', n_args, l_bound), str_val_call('y', 'B', n_args, l_bound), atom_and(concat_eqs)])}
                )
            )""")

    replace_eqs = [
        eq("P", indexof_expr("A", "B", "0", l_bound, l_bound + 1)),
        eq("R_len", replace_len_expr("P", "A", "B", "C", l_bound, l_bound + 1, bot)),
    ]
    replace_eqs.extend(eq(f"R_{k}", replace_char_expr(k, "P", "A", "B", "C", l_bound, l_bound + 1)) for k in range(l_bound + 1))
    cases.append(f"""            ((str.replace x y z)
                (exists
                    ({typed_ints(a_vars + b_vars + c_vars + ['P'])})
                    {atom_and([str_val_call('x', 'A', n_args, l_bound), str_val_call('y', 'B', n_args, l_bound), str_val_call('z', 'C', n_args, l_bound), atom_and(replace_eqs)])}
                )
            )""")

    at_eqs = [eq("R_len", at_len("A_len", "I", l_bound)), eq("R_0", at_char("I", "A", l_bound))]
    at_eqs.extend(eq(f"R_{k}", 0) for k in range(1, l_bound + 1))
    cases.append(f"""            ((str.at x i)
                (exists
                    ({typed_ints(a_vars + ['I'])})
                    {atom_and([str_val_call('x', 'A', n_args, l_bound), sint_val_call('i', 'I', n_args, l_bound), atom_and(at_eqs)])}
                )
            )""")

    from_int_eqs = [eq("R_len", int2str_len("I", l_bound))]
    from_int_eqs.extend(eq(f"R_{k}", int2str_char(k, "I", l_bound)) for k in range(l_bound + 1))
    cases.append(f"""            ((str.int2str i)
                (exists
                    ({typed_ints(['I'])})
                    {atom_and([sint_val_call('i', 'I', n_args, l_bound), atom_and(from_int_eqs)])}
                )
            )""")

    ite_eqs = [eq("R_len", "(ite P A_len B_len)")]
    ite_eqs.extend(eq(f"R_{k}", f"(ite P A_{k} B_{k})") for k in range(l_bound + 1))
    cases.append(f"""            ((str.ite p x y)
                (exists
                    ({' '.join([typed_bool('P'), typed_ints(a_vars + b_vars)])})
                    {atom_and([sbool_call('p', 'P', n_args, l_bound), str_val_call('x', 'A', n_args, l_bound), str_val_call('y', 'B', n_args, l_bound), atom_and(ite_eqs)])}
                )
            )""")

    s_len = substr_len("A_len", "I", "N", l_bound)
    substr_eqs = [eq("R_len", s_len)]
    substr_eqs.extend(eq(f"R_{k}", substr_char(k, "A", "I", s_len, l_bound)) for k in range(l_bound + 1))
    cases.append(f"""            ((str.substr x i n)
                (exists
                    ({typed_ints(a_vars + i_vars)})
                    {atom_and([str_val_call('x', 'A', n_args, l_bound), sint_val_call('i', 'I', n_args, l_bound), sint_val_call('n', 'N', n_args, l_bound), atom_and(substr_eqs)])}
                )
            )""")

    input_part = " ".join(input_names(n_args, l_bound))
    output_part = " ".join(value_names(out, l_bound))
    return f"""(! (match t (
{chr(10).join(cases)}
        )) :input ({input_part}) :output ({output_part}))"""


def sint_val_sem(n_args: int, l_bound: int, neg1: int, bot: int) -> str:
    a_vars = value_names("A", l_bound)
    b_vars = value_names("B", l_bound)
    cases = [
        f"""            (int.0
                {eq('value', 0)}
            )""",
        f"""            (int.1
                {eq('value', 1)}
            )""",
        f"""            (int.neg1
                {eq('value', neg1)}
            )""",
        f"""            ((int.+ x y)
                (exists
                    ({typed_ints(['A', 'B'])})
                    {atom_and([sint_val_call('x', 'A', n_args, l_bound), sint_val_call('y', 'B', n_args, l_bound), eq('value', idx_plus('A', 'B', l_bound, bot))])}
                )
            )""",
        f"""            ((int.- x y)
                (exists
                    ({typed_ints(['A', 'B'])})
                    {atom_and([sint_val_call('x', 'A', n_args, l_bound), sint_val_call('y', 'B', n_args, l_bound), eq('value', idx_minus('A', 'B', l_bound, bot))])}
                )
            )""",
        f"""            ((int.len x)
                (exists
                    ({typed_ints(a_vars)})
                    {atom_and([str_val_call('x', 'A', n_args, l_bound), eq('value', 'A_len')])}
                )
            )""",
        f"""            ((int.to_int x)
                (exists
                    ({typed_ints(a_vars)})
                    {atom_and([str_val_call('x', 'A', n_args, l_bound), eq('value', to_int_expr('A', l_bound, neg1))])}
                )
            )""",
        f"""            ((int.ite p x y)
                (exists
                    ({' '.join([typed_bool('P'), typed_ints(['A', 'B'])])})
                    {atom_and([sbool_call('p', 'P', n_args, l_bound), sint_val_call('x', 'A', n_args, l_bound), sint_val_call('y', 'B', n_args, l_bound), eq('value', '(ite P A B)')])}
                )
            )""",
        f"""            ((int.indexof x y k)
                (exists
                    ({typed_ints(a_vars + b_vars + ['K'])})
                    {atom_and([str_val_call('x', 'A', n_args, l_bound), str_val_call('y', 'B', n_args, l_bound), sint_val_call('k', 'K', n_args, l_bound), eq('value', indexof_expr('A', 'B', 'K', l_bound, neg1))])}
                )
            )""",
    ]
    return f"""(! (match t (
{chr(10).join(cases)}
        )) :input ({' '.join(input_names(n_args, l_bound))}) :output (value))"""


def sbool_sem(n_args: int, l_bound: int) -> str:
    a_vars = value_names("A", l_bound)
    b_vars = value_names("B", l_bound)
    cases = [
        f"""            (bool.true
                {eq('result', 'true')}
            )""",
        f"""            (bool.false
                {eq('result', 'false')}
            )""",
        f"""            ((bool.= x y)
                (exists
                    ({typed_ints(['A', 'B'])})
                    {atom_and([sint_val_call('x', 'A', n_args, l_bound), sint_val_call('y', 'B', n_args, l_bound), eq('result', '(= A B)')])}
                )
            )""",
        f"""            ((bool.prefixof x y)
                (exists
                    ({typed_ints(a_vars + b_vars)})
                    {atom_and([str_val_call('x', 'A', n_args, l_bound), str_val_call('y', 'B', n_args, l_bound), eq('result', prefixof_expr('A', 'B', l_bound))])}
                )
            )""",
        f"""            ((bool.suffixof x y)
                (exists
                    ({typed_ints(a_vars + b_vars)})
                    {atom_and([str_val_call('x', 'A', n_args, l_bound), str_val_call('y', 'B', n_args, l_bound), eq('result', suffixof_expr('A', 'B', l_bound))])}
                )
            )""",
        f"""            ((bool.contains x y)
                (exists
                    ({typed_ints(a_vars + b_vars)})
                    {atom_and([str_val_call('x', 'A', n_args, l_bound), str_val_call('y', 'B', n_args, l_bound), eq('result', contains_expr('A', 'B', l_bound))])}
                )
            )""",
    ]
    return f"""(! (match t (
{chr(10).join(cases)}
        )) :input ({' '.join(input_names(n_args, l_bound))}) :output (result))"""


def constraint_for(inputs: list[str], output: str, n_args: int, l_bound: int) -> str:
    args: list[str] = []
    for idx in range(n_args):
        text = inputs[idx]
        args.append(str(len(text)))
        for k in range(l_bound + 1):
            args.append(str(ord(text[k]) if k < len(text) else 0))
    args.append(str(len(output)))
    for k in range(l_bound + 1):
        args.append(str(ord(output[k]) if k < len(output) else 0))
    args.append("true")
    return f"(constraint (Start.Sem f {' '.join(args)}))"


def max_bound(case: SygusCase, slack: int) -> int:
    bound = 1
    for const in case.constants:
        bound = max(bound, len(const))
    for inputs, output in case.examples:
        bound = max(bound, len(output))
        for text in inputs:
            bound = max(bound, len(text))
    return bound + slack


def emit(path: Path, case: SygusCase, slack: int = 0) -> tuple[str, int]:
    l_bound = max_bound(case, slack)
    neg1 = l_bound + 1
    bot = l_bound + 2
    const_terms = " ".join(f"(str.c{i})" for i in range(len(case.constants)))
    arg_terms = " ".join(f"(arg{i})" for i in range(case.n_args))
    constraints = "\n".join(
        constraint_for(inputs, output, case.n_args, l_bound)
        for inputs, output in case.examples
    )
    input_decl = typed_ints(input_names(case.n_args, l_bound))
    expected_decl = typed_ints(expected_names(l_bound))
    str_out_decl = typed_ints(value_names("R", l_bound))
    text = f""";; String_{path.stem}: SemGuS value-vector encoding from {path.name}
;; examples: {len(case.examples)}, args: {case.n_args}, constants: {len(case.constants)}, L: {l_bound}
;; neg1={neg1}, bot={bot}, char-pad=0

(declare-term-types
    ((Start 0) (Str 0) (SInt 0) (SBool 0))
    (
        (($eval Str))
        (
            {const_terms}
            {arg_terms}
            (str.++ Str Str)
            (str.replace Str Str Str)
            (str.at Str SInt)
            (str.int2str SInt)
            (str.ite SBool Str Str)
            (str.substr Str SInt SInt)
        )
        (
            (int.0)
            (int.1)
            (int.neg1)
            (int.+ SInt SInt)
            (int.- SInt SInt)
            (int.len Str)
            (int.to_int Str)
            (int.ite SBool SInt SInt)
            (int.indexof Str Str SInt)
        )
        (
            (bool.true)
            (bool.false)
            (bool.= SInt SInt)
            (bool.prefixof Str Str)
            (bool.suffixof Str Str)
            (bool.contains Str Str)
        )
    )
)

(define-funs-rec
    (
        (Start.Sem ((t Start) {input_decl} {expected_decl} (result Bool)) Bool)
        (Str.Val ((t Str) {input_decl} {str_out_decl}) Bool)
        (SInt.Val ((t SInt) {input_decl} (value Int)) Bool)
        (SBool.Sem ((t SBool) {input_decl} (result Bool)) Bool)
    )
    (
        {start_sem(case.n_args, l_bound)}
        {str_val_sem(case.n_args, case.constants, l_bound, bot)}
        {sint_val_sem(case.n_args, l_bound, neg1, bot)}
        {sbool_sem(case.n_args, l_bound)}
    )
)

(synth-fun f () Start)

{constraints}
(check-synth)
"""
    return text, l_bound


def iter_inputs(input_dir: Path, start: int | None, end: int | None, limit: int | None) -> list[Path]:
    paths = sorted(input_dir.glob("*.sl"))
    if start is not None:
        paths = [p for p in paths if int(p.stem) >= start]
    if end is not None:
        paths = [p for p in paths if int(p.stem) <= end]
    if limit is not None:
        paths = paths[:limit]
    return paths


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input-dir", type=Path, default=DEFAULT_IN)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--start", type=int, default=None)
    parser.add_argument("--end", type=int, default=None)
    parser.add_argument("--limit", type=int, default=None)
    parser.add_argument("--min-l", type=int, default=None)
    parser.add_argument("--max-l", type=int, default=None)
    parser.add_argument("--slack", type=int, default=0)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--clean", action="store_true")
    parser.add_argument("--strict", action="store_true")
    args = parser.parse_args()

    if not args.dry_run:
        args.out.mkdir(parents=True, exist_ok=True)
        if args.clean:
            for old in args.out.glob("*.sl"):
                old.unlink()
            for old in (args.out / "MANIFEST.txt", args.out / "SKIPPED.txt"):
                if old.exists():
                    old.unlink()
    manifest: list[str] = []
    skipped: list[str] = []
    for src in iter_inputs(args.input_dir, args.start, args.end, args.limit):
        try:
            case = parse_sygus(src)
        except ValueError as exc:
            if args.strict:
                raise
            line = f"{src.name}\terror={exc}"
            skipped.append(line)
            print(f"SKIP\t{line}")
            continue
        l_bound = max_bound(case, args.slack)
        if args.min_l is not None and l_bound < args.min_l:
            line = f"{src.name}\tL={l_bound}\treason=below-min-l"
            skipped.append(line)
            print(f"SKIP\t{line}")
            continue
        if args.max_l is not None and l_bound > args.max_l:
            line = f"{src.name}\tL={l_bound}\treason=above-max-l"
            skipped.append(line)
            print(f"SKIP\t{line}")
            continue
        if args.dry_run:
            line = (
                f"{src.name}\tL={l_bound}\targs={case.n_args}"
                f"\tconsts={len(case.constants)}\texamples={len(case.examples)}"
            )
            print(f"DRY\t{line}")
            continue
        text, l_bound = emit(src, case, slack=args.slack)
        dst = args.out / src.name
        dst.write_text(text)
        line = (
            f"{src.name}\tL={l_bound}\targs={case.n_args}"
            f"\tconsts={len(case.constants)}\texamples={len(case.examples)}"
        )
        manifest.append(line)
        print(line)
    if manifest and not args.dry_run:
        (args.out / "MANIFEST.txt").write_text("\n".join(manifest) + "\n")
    if skipped and not args.dry_run:
        (args.out / "SKIPPED.txt").write_text("\n".join(skipped) + "\n")


if __name__ == "__main__":
    main()
