#!/usr/bin/env python3
"""Generate SemGuS regular-expression benchmarks from benchmark/Reg.

The output mirrors the AlphaRegex linear interval encoding used by the
Semgus-Benchmarks regular-expression suite.  Each example word is encoded as a
fixed-length vector of integer symbols:

  0 -> char_0 only
  1 -> char_1 only
  ? -> both char_0 and char_1
  _ -> neither char_0 nor char_1, but still matched by $any

Positions past the example length are padded with 40.
"""

from __future__ import annotations

import argparse
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
REG = ROOT / "Reg"
OUT = REG / "semgus"


CASE_RE = re.compile(r"RegLan\.Asp\s+w([^\s)]+)")


def atom_or(items: list[str]) -> str:
    if not items:
        return "false"
    if len(items) == 1:
        return items[0]
    return f"(or {' '.join(items)})"


def atom_and(items: list[str]) -> str:
    if not items:
        return "true"
    if len(items) == 1:
        return items[0]
    return f"(and {' '.join(items)})"


def intervals(max_len: int) -> list[tuple[int, int]]:
    return [(i, j) for i in range(max_len + 1) for j in range(i, max_len + 1)]


def x(prefix: str, i: int, j: int) -> str:
    return f"{prefix}_{i}_{j}"


def parse_string_info(text: str, key: str) -> str:
    match = re.search(rf'\(set-info\s+:{key}\s+"([^"]*)"\)', text)
    return match.group(1) if match else ""


def parse_case(path: Path) -> tuple[str, str, list[tuple[str, bool]]]:
    text = path.read_text()
    source = parse_string_info(text, "source")
    description = parse_string_info(text, "description")
    examples: list[tuple[str, bool]] = []
    for line in text.splitlines():
        if "RegLan.Asp" not in line:
            continue
        match = CASE_RE.search(line)
        if not match:
            raise ValueError(f"could not parse model reference in {path}: {line}")
        word = match.group(1)
        expected = "(not" not in line
        examples.append((word, expected))
    if not examples:
        raise ValueError(f"no examples found in {path}")
    return source, description, examples


def value_for_char(ch: str) -> int:
    if ch == "0":
        return 0
    if ch == "1":
        return 1
    if ch == "?":
        return 2
    if ch in {"_", "X"}:
        return 3
    raise ValueError(f"unsupported Reg example character: {ch!r}")


def eq(lhs: str, rhs: str) -> str:
    return f"(= {lhs} {rhs})"


def char_test(pos: int, bit: int) -> str:
    if bit == 0:
        return f"(or (= s_{pos} 0) (= s_{pos} 2))"
    return f"(or (= s_{pos} 1) (= s_{pos} 2))"


def output_vars(max_len: int, prefix: str = "X") -> list[str]:
    return [x(prefix, i, j) for i, j in intervals(max_len)]


def typed_bool_vars(names: list[str]) -> str:
    return " ".join(f"({name} Bool)" for name in names)


def r_sem_args(max_len: int, term: str, prefix: str = "X") -> str:
    inputs = ["len"] + [f"s_{i}" for i in range(max_len)]
    return " ".join([term, *inputs, *output_vars(max_len, prefix)])


def start_sem(max_len: int) -> str:
    xs = output_vars(max_len)
    exists_vars = typed_bool_vars(xs)
    clauses = []
    for length in range(1, max_len + 1):
        body = atom_and(
            [
                eq("len", str(length)),
                f"(R.Sem {r_sem_args(max_len, 't1')})",
                eq("result", x("X", 0, length)),
            ]
        )
        clauses.append(f"(exists ({exists_vars}) {body})")
    return f"""(! (match t (
            (($eval t1)
                {atom_or(clauses)}
            )
        )) :input ({" ".join(["len", *[f"s_{i}" for i in range(max_len)]])}) :output (result))"""


def leaf_equalities(max_len: int, kind: str) -> list[str]:
    equalities = []
    for i, j in intervals(max_len):
        name = x("X", i, j)
        if kind == "any":
            rhs = "true" if j == i + 1 else "false"
        elif kind == "char0":
            rhs = char_test(i, 0) if j == i + 1 else "false"
        elif kind == "char1":
            rhs = char_test(i, 1) if j == i + 1 else "false"
        else:
            raise ValueError(kind)
        equalities.append(eq(name, rhs))
    return equalities


def union_equalities(max_len: int) -> list[str]:
    return [
        eq(x("X", i, j), f"(or {x('A', i, j)} {x('B', i, j)})")
        for i, j in intervals(max_len)
    ]


def concat_equalities(max_len: int) -> list[str]:
    equalities = []
    for i, j in intervals(max_len):
        pieces = [
            f"(and {x('A', i, k)} {x('B', k, j)})" for k in range(i, j + 1)
        ]
        equalities.append(eq(x("X", i, j), atom_or(pieces)))
    return equalities


def option_equalities(max_len: int) -> list[str]:
    return [
        eq(x("X", i, j), "true" if i == j else x("A", i, j))
        for i, j in intervals(max_len)
    ]


def compositions(start: int, end: int) -> list[list[tuple[int, int]]]:
    if start == end:
        return [[]]
    out: list[list[tuple[int, int]]] = []
    for nxt in range(start + 1, end + 1):
        for rest in compositions(nxt, end):
            out.append([(start, nxt), *rest])
    return out


def star_equalities(max_len: int) -> list[str]:
    equalities = []
    for i, j in intervals(max_len):
        if i == j:
            rhs = "true"
        else:
            pieces = [
                atom_and([x("A", a, b) for a, b in comp])
                for comp in compositions(i, j)
            ]
            rhs = atom_or(pieces)
        equalities.append(eq(x("X", i, j), rhs))
    return equalities


def exists_case(
    max_len: int,
    pattern: str,
    child_terms: list[str],
    aux_prefixes: list[str],
    equalities: list[str],
) -> str:
    aux_vars = " ".join(typed_bool_vars(output_vars(max_len, p)) for p in aux_prefixes)
    sem_calls = [
        f"(R.Sem {r_sem_args(max_len, term, prefix)})"
        for term, prefix in zip(child_terms, aux_prefixes)
    ]
    body = atom_and([*sem_calls, atom_and(equalities)])
    return f"""            ({pattern}
                (exists
                    ({aux_vars})
                    {body}
                )
            )"""


def r_sem(max_len: int) -> str:
    any_case = f"""            ($any
                {atom_and(leaf_equalities(max_len, "any"))}
            )"""
    zero_case = f"""            ($char_0
                {atom_and(leaf_equalities(max_len, "char0"))}
            )"""
    one_case = f"""            ($char_1
                {atom_and(leaf_equalities(max_len, "char1"))}
            )"""
    or_case = exists_case(
        max_len,
        "($or t1 t2)",
        ["t1", "t2"],
        ["A", "B"],
        union_equalities(max_len),
    )
    concat_case = exists_case(
        max_len,
        "($concat t1 t2)",
        ["t1", "t2"],
        ["A", "B"],
        concat_equalities(max_len),
    )
    question_case = exists_case(
        max_len,
        "($question t1)",
        ["t1"],
        ["A"],
        option_equalities(max_len),
    )
    star_case = exists_case(
        max_len,
        "($star t1)",
        ["t1"],
        ["A"],
        star_equalities(max_len),
    )
    input_vars = " ".join(["len", *[f"s_{i}" for i in range(max_len)]])
    return f"""(! (match t (
{any_case}
{zero_case}
{one_case}
{or_case}
{concat_case}
{question_case}
{star_case}
        )) :input ({input_vars}) :output ({" ".join(output_vars(max_len))}))"""


def constraint_for(word: str, expected: bool, max_len: int) -> str:
    values = [str(value_for_char(ch)) for ch in word]
    values.extend(["40"] * (max_len - len(word)))
    result = "true" if expected else "false"
    args = " ".join([str(len(word)), *values, result])
    return f"(constraint (Start.Sem match_regex {args}))"


def emit_case(index: int, source: str, description: str, examples: list[tuple[str, bool]]) -> str:
    max_len = max(len(word) for word, _ in examples)
    start_args = " ".join(["(t Start)", "(len Int)", *[f"(s_{i} Int)" for i in range(max_len)], "(result Bool)"])
    r_args = " ".join(
        [
            "(t R)",
            "(len Int)",
            *[f"(s_{i} Int)" for i in range(max_len)],
            *[f"({name} Bool)" for name in output_vars(max_len)],
        ]
    )
    constraints = "\n".join(
        constraint_for(word, expected, max_len) for word, expected in examples
    )
    header = [
        f";; Reg_{index:04d}: {description}",
        f";; source: {source}",
        "",
        ";; (set-info :format-version \"2.2.0\")",
        ";; (set-info :author \"Chentian Wu\")",
        "",
    ]
    return "\n".join(header) + f"""(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($char_0)
            ($char_1)
            ($any)
            ($question R)
            ($or R R)
            ($concat R R)
            ($star R)
        )
    )
)

(define-funs-rec
    (
        (Start.Sem ({start_args}) Bool)
        (R.Sem ({r_args}) Bool)
    )
    (
        {start_sem(max_len)}
        {r_sem(max_len)}
    )
)

(synth-fun match_regex() Start)

{constraints}
(check-synth)
"""


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", type=Path, default=OUT)
    parser.add_argument("--start", type=int, default=1)
    parser.add_argument("--end", type=int, default=57)
    args = parser.parse_args()

    args.out.mkdir(parents=True, exist_ok=True)
    manifest = []
    for index in range(args.start, args.end + 1):
        source, description, examples = parse_case(REG / f"{index:04d}.sl")
        output = emit_case(index, source, description, examples)
        out_path = args.out / f"{index:04d}.sl"
        out_path.write_text(output)
        max_len = max(len(word) for word, _ in examples)
        pos = sum(1 for _, expected in examples if expected)
        neg = len(examples) - pos
        manifest.append(
            f"{index:04d}.sl\tmax_len={max_len}\tpos={pos}\tneg={neg}\t{description}"
        )
        print(manifest[-1])
    (args.out / "MANIFEST.txt").write_text("\n".join(manifest) + "\n")


if __name__ == "__main__":
    main()
