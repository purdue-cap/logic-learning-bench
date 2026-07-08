#!/usr/bin/env python3
"""Generate SemGuS LTL benchmarks from benchmark/LTL traces.

Each lasso trace is encoded as concrete inputs:

  len, loop, p0_0, p0_1, ..., pN_M

The recursive SemGuS semantics computes the truth value of the candidate LTL
formula at every position of the input lasso.  This avoids SemGuS models and
keeps even the large samples2LTL instances as ordinary input/output examples.
"""

from __future__ import annotations

import argparse
import re
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LTL = ROOT / "LTL"
TRACE = LTL / "trace"
OUT = LTL / "semgus"


@dataclass(frozen=True)
class Trace:
    steps: list[list[int]]
    loop: int
    expected: bool


@dataclass(frozen=True)
class Case:
    index: int
    source: str
    operators: str
    depth: str
    expected_formula: str
    traces: list[Trace]

    @property
    def nvars(self) -> int:
        return len(self.traces[0].steps[0])

    @property
    def max_len(self) -> int:
        return max(len(trace.steps) for trace in self.traces)

    @property
    def pos_count(self) -> int:
        return sum(1 for trace in self.traces if trace.expected)

    @property
    def neg_count(self) -> int:
        return len(self.traces) - self.pos_count


def atom_or(items: list[str]) -> str:
    items = [item for item in items if item != "false"]
    if not items:
        return "false"
    if "true" in items:
        return "true"
    if len(items) == 1:
        return items[0]
    return f"(or {' '.join(items)})"


def atom_and(items: list[str]) -> str:
    items = [item for item in items if item != "true"]
    if not items:
        return "true"
    if "false" in items:
        return "false"
    if len(items) == 1:
        return items[0]
    return f"(and {' '.join(items)})"


def eq(lhs: str, rhs: str) -> str:
    return f"(= {lhs} {rhs})"


def valid(pos: int) -> str:
    return f"(< {pos} len)"


def bit_name(prop: int, pos: int) -> str:
    return f"p{prop}_{pos}"


def value_name(prefix: str, pos: int) -> str:
    return f"{prefix}_{pos}"


def bit_vars(nvars: int, max_len: int) -> list[str]:
    return [bit_name(prop, pos) for prop in range(nvars) for pos in range(max_len)]


def value_vars(max_len: int, prefix: str = "X") -> list[str]:
    return [value_name(prefix, pos) for pos in range(max_len)]


def typed_bool_vars(names: list[str]) -> str:
    return " ".join(f"({name} Bool)" for name in names)


def start_sem_args(nvars: int, max_len: int) -> str:
    args = ["(t Start)", "(len Int)", "(loop Int)"]
    args.extend(f"({name} Bool)" for name in bit_vars(nvars, max_len))
    args.append("(result Bool)")
    return " ".join(args)


def ltl_sem_args(nvars: int, max_len: int) -> str:
    args = ["(t LTL)", "(len Int)", "(loop Int)"]
    args.extend(f"({name} Bool)" for name in bit_vars(nvars, max_len))
    args.extend(f"({name} Bool)" for name in value_vars(max_len))
    return " ".join(args)


def ltl_call(nvars: int, max_len: int, term: str, prefix: str = "X") -> str:
    args = [term, "len", "loop", *bit_vars(nvars, max_len), *value_vars(max_len, prefix)]
    return f"(LTL.Sem {' '.join(args)})"


def future_cond(i: int, k: int) -> str:
    if k >= i:
        return valid(k)
    return atom_and([valid(i), f"(< loop {k + 1})"])


def prefix_cond(i: int, k: int, j: int) -> str:
    if i == k:
        return "false"
    if k > i:
        if i <= j < k:
            return valid(k)
        return "false"
    if j >= i:
        return atom_and([valid(j), f"(< loop {k + 1})"])
    if j < k:
        return atom_and([valid(i), f"(< loop {j + 1})"])
    return "false"


def next_expr(max_len: int, prefix: str, pos: int) -> str:
    pieces: list[str] = []
    if pos + 1 < max_len:
        pieces.append(atom_and([f"(< {pos + 1} len)", value_name(prefix, pos + 1)]))
    loop_cases = [
        atom_and([f"(= len {pos + 1})", f"(= loop {target})", value_name(prefix, target)])
        for target in range(pos + 1)
    ]
    pieces.extend(loop_cases)
    return atom_or(pieces)


def proposition_equalities(nvars: int, max_len: int, prop: int) -> list[str]:
    return [
        eq(value_name("X", pos), atom_and([valid(pos), bit_name(prop, pos)]))
        for pos in range(max_len)
    ]


def unary_equalities(max_len: int, prefix: str, op: str) -> list[str]:
    equalities = []
    for pos in range(max_len):
        child = value_name(prefix, pos)
        out = value_name("X", pos)
        if op == "not":
            rhs = atom_and([valid(pos), f"(not {child})"])
        elif op == "next":
            rhs = next_expr(max_len, prefix, pos)
        elif op == "globally":
            reqs = [f"(or (not {future_cond(pos, k)}) {value_name(prefix, k)})" for k in range(max_len)]
            rhs = atom_and([valid(pos), *reqs])
        elif op == "finally":
            rhs = atom_or(
                [atom_and([future_cond(pos, k), value_name(prefix, k)]) for k in range(max_len)]
            )
        else:
            raise ValueError(op)
        equalities.append(eq(out, rhs))
    return equalities


def binary_equalities(max_len: int, left: str, right: str, op: str) -> list[str]:
    equalities = []
    for pos in range(max_len):
        a = value_name(left, pos)
        b = value_name(right, pos)
        out = value_name("X", pos)
        if op == "and":
            rhs = atom_and([valid(pos), a, b])
        elif op == "or":
            rhs = atom_and([valid(pos), atom_or([a, b])])
        elif op == "implies":
            rhs = atom_and([valid(pos), atom_or([f"(not {a})", b])])
        elif op == "until":
            pieces = []
            for k in range(max_len):
                reqs = [future_cond(pos, k), value_name(right, k)]
                for j in range(max_len):
                    cond = prefix_cond(pos, k, j)
                    if cond != "false":
                        reqs.append(f"(or (not {cond}) {value_name(left, j)})")
                pieces.append(atom_and(reqs))
            rhs = atom_or(pieces)
        else:
            raise ValueError(op)
        equalities.append(eq(out, rhs))
    return equalities


def exists_case(
    nvars: int,
    max_len: int,
    pattern: str,
    child_terms: list[str],
    aux_prefixes: list[str],
    equalities: list[str],
) -> str:
    aux_vars = " ".join(typed_bool_vars(value_vars(max_len, prefix)) for prefix in aux_prefixes)
    sem_calls = [
        ltl_call(nvars, max_len, term, prefix)
        for term, prefix in zip(child_terms, aux_prefixes)
    ]
    body = atom_and([*sem_calls, atom_and(equalities)])
    return f"""            ({pattern}
                (exists
                    ({aux_vars})
                    {body}
                )
            )"""


def start_sem(nvars: int, max_len: int) -> str:
    xs = value_vars(max_len)
    exists_vars = typed_bool_vars(xs)
    input_vars = " ".join(["len", "loop", *bit_vars(nvars, max_len)])
    body = atom_and([ltl_call(nvars, max_len, "t1"), eq("result", value_name("X", 0))])
    return f"""(! (match t (
            (($eval t1)
                (exists
                    ({exists_vars})
                    {body}
                )
            )
        )) :input ({input_vars}) :output (result))"""


def ltl_sem(nvars: int, max_len: int) -> str:
    leaf_cases = [
        f"""            ($p{prop}
                {atom_and(proposition_equalities(nvars, max_len, prop))}
            )"""
        for prop in range(nvars)
    ]
    not_case = exists_case(
        nvars,
        max_len,
        "($not t1)",
        ["t1"],
        ["A"],
        unary_equalities(max_len, "A", "not"),
    )
    next_case = exists_case(
        nvars,
        max_len,
        "($X t1)",
        ["t1"],
        ["A"],
        unary_equalities(max_len, "A", "next"),
    )
    globally_case = exists_case(
        nvars,
        max_len,
        "($G t1)",
        ["t1"],
        ["A"],
        unary_equalities(max_len, "A", "globally"),
    )
    finally_case = exists_case(
        nvars,
        max_len,
        "($F t1)",
        ["t1"],
        ["A"],
        unary_equalities(max_len, "A", "finally"),
    )
    and_case = exists_case(
        nvars,
        max_len,
        "($and t1 t2)",
        ["t1", "t2"],
        ["A", "B"],
        binary_equalities(max_len, "A", "B", "and"),
    )
    or_case = exists_case(
        nvars,
        max_len,
        "($or t1 t2)",
        ["t1", "t2"],
        ["A", "B"],
        binary_equalities(max_len, "A", "B", "or"),
    )
    implies_case = exists_case(
        nvars,
        max_len,
        "($impl t1 t2)",
        ["t1", "t2"],
        ["A", "B"],
        binary_equalities(max_len, "A", "B", "implies"),
    )
    until_case = exists_case(
        nvars,
        max_len,
        "($U t1 t2)",
        ["t1", "t2"],
        ["A", "B"],
        binary_equalities(max_len, "A", "B", "until"),
    )
    input_vars = " ".join(["len", "loop", *bit_vars(nvars, max_len)])
    output_vars = " ".join(value_vars(max_len))
    cases = "\n".join(
        [
            *leaf_cases,
            not_case,
            next_case,
            globally_case,
            finally_case,
            and_case,
            or_case,
            implies_case,
            until_case,
        ]
    )
    return f"""(! (match t (
{cases}
        )) :input ({input_vars}) :output ({output_vars}))"""


def split_sections(text: str) -> list[list[str]]:
    sections: list[list[str]] = []
    current: list[str] = []
    for line in text.strip().splitlines():
        if line.strip() == "---":
            sections.append(current)
            current = []
        else:
            current.append(line.strip())
    sections.append(current)
    return sections


def parse_lasso(trace_str: str) -> tuple[list[list[int]], int]:
    if "::" in trace_str:
        body, loop = trace_str.rsplit("::", 1)
        loop_point = int(loop)
    else:
        body = trace_str
        loop_point = 0
    steps = [[int(value) for value in step.split(",")] for step in body.split(";")]
    if not steps:
        raise ValueError(f"empty trace: {trace_str!r}")
    if not 0 <= loop_point < len(steps):
        raise ValueError(f"bad loop point {loop_point} for trace: {trace_str!r}")
    return steps, loop_point


def parse_string_info(text: str, key: str) -> str:
    match = re.search(rf'\(set-info\s+:{key}\s+"([^"]*)"\)', text)
    return match.group(1) if match else ""


def parse_case(index: int) -> Case:
    trace_path = TRACE / f"{index:04d}.trace"
    sl_path = LTL / f"{index:04d}.sl"
    sections = split_sections(trace_path.read_text())
    if len(sections) < 5:
        raise ValueError(f"expected 5 trace sections in {trace_path}")
    pos_lines = [line for line in sections[0] if line]
    neg_lines = [line for line in sections[1] if line]
    operators = sections[2][0] if sections[2] else ""
    depth = sections[3][0] if sections[3] else ""
    expected_formula = sections[4][0] if sections[4] else ""
    source = parse_string_info(sl_path.read_text(), "source")

    traces: list[Trace] = []
    nvars: int | None = None
    for expected, lines in [(True, pos_lines), (False, neg_lines)]:
        for line in lines:
            steps, loop = parse_lasso(line)
            if nvars is None:
                nvars = len(steps[0])
            if any(len(step) != nvars for step in steps):
                raise ValueError(f"inconsistent proposition count in {trace_path}: {line}")
            traces.append(Trace(steps=steps, loop=loop, expected=expected))
    if nvars is None:
        raise ValueError(f"no traces found in {trace_path}")
    return Case(
        index=index,
        source=source,
        operators=operators,
        depth=depth,
        expected_formula=expected_formula,
        traces=traces,
    )


def constructor_decls(nvars: int) -> str:
    leaves = " ".join(f"($p{prop})" for prop in range(nvars))
    return f"""{leaves}
            ($not LTL)
            ($X LTL)
            ($G LTL)
            ($F LTL)
            ($and LTL LTL)
            ($or LTL LTL)
            ($impl LTL LTL)
            ($U LTL LTL)"""


def constraint_for(trace: Trace, case: Case) -> str:
    bits: list[str] = []
    for prop in range(case.nvars):
        for pos in range(case.max_len):
            value = pos < len(trace.steps) and trace.steps[pos][prop] == 1
            bits.append("true" if value else "false")
    result = "true" if trace.expected else "false"
    args = " ".join([str(len(trace.steps)), str(trace.loop), *bits, result])
    return f"(constraint (Start.Sem phi {args}))"


def emit_case(case: Case) -> str:
    constraints = "\n".join(constraint_for(trace, case) for trace in case.traces)
    header = [
        f";; LTL_{case.index:04d}: {case.expected_formula}",
        f";; source: {case.source}",
        f";; operators: {case.operators}",
        f";; depth: {case.depth}",
        f";; traces: {len(case.traces)}, pos: {case.pos_count}, neg: {case.neg_count}",
        f";; vars: {case.nvars}, max_len: {case.max_len}",
        "",
        ";; (set-info :format-version \"2.2.0\")",
        ";; (set-info :author \"Chentian Wu\")",
        "",
    ]
    return "\n".join(header) + f"""(declare-term-types
    ((Start 0) (LTL 0))
    (
        (($eval LTL))
        (
            {constructor_decls(case.nvars)}
        )
    )
)

(define-funs-rec
    (
        (Start.Sem ({start_sem_args(case.nvars, case.max_len)}) Bool)
        (LTL.Sem ({ltl_sem_args(case.nvars, case.max_len)}) Bool)
    )
    (
        {start_sem(case.nvars, case.max_len)}
        {ltl_sem(case.nvars, case.max_len)}
    )
)

(synth-fun phi () Start)

{constraints}
(check-synth)
"""


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", type=Path, default=OUT)
    parser.add_argument("--start", type=int, default=1)
    parser.add_argument("--end", type=int, default=None)
    args = parser.parse_args()

    indices = sorted(int(path.stem) for path in TRACE.glob("[0-9][0-9][0-9][0-9].trace"))
    if args.end is None:
        selected = [index for index in indices if index >= args.start]
    else:
        selected = [index for index in indices if args.start <= index <= args.end]
    if not selected:
        raise SystemExit("no LTL trace files selected")

    args.out.mkdir(parents=True, exist_ok=True)
    manifest: list[str] = []
    for index in selected:
        case = parse_case(index)
        output = emit_case(case)
        out_path = args.out / f"{index:04d}.sl"
        out_path.write_text(output)
        manifest.append(
            "\t".join(
                [
                    f"{index:04d}.sl",
                    f"vars={case.nvars}",
                    f"max_len={case.max_len}",
                    f"pos={case.pos_count}",
                    f"neg={case.neg_count}",
                    f"depth={case.depth}",
                    case.expected_formula,
                ]
            )
        )
        print(manifest[-1])
    (args.out / "MANIFEST.txt").write_text("\n".join(manifest) + "\n")


if __name__ == "__main__":
    main()
