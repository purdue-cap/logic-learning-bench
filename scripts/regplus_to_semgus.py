#!/usr/bin/env python3
"""Generate SemGuS regular-expression benchmarks from benchmark/Reg+.

The Reg+ SyGuS files already contain the concrete example strings and a
per-case regex grammar.  This generator mirrors that grammar in SemGuS while
using the finite-interval Boolean semantics used by the Reg SemGuS benchmarks:
each regex term denotes, for a fixed example length, which substrings it
matches.  Characters are represented by integer code points, avoiding native
SMT regex values that ks2 does not operationalize reliably.
"""

from __future__ import annotations

import argparse
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
REGPLUS = ROOT / "Reg+"
SYGUS = REGPLUS / "sygus"
OUT = REGPLUS / "semgus"


DEFINE_STRING_RE = re.compile(
    r"\(define-fun\s+(w\d+)\s+\(\)\s+String\s+"
    r'("(?:\\u\{[0-9A-Fa-f]+\}|""|\\.|[^"\\])*")\s*\)',
    re.S,
)
CONSTRAINT_RE = re.compile(
    r"\(constraint\s+(\(not\s+)?\(str\.in_re\s+(w\d+)\s+r\)\)?\s*\)"
)
STR_TO_RE_RE = re.compile(r'\(str\.to_re\s+("(?:\\u\{[0-9A-Fa-f]+\}|""|\\.|[^"\\])*")\)')


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


def output_vars(max_len: int, prefix: str = "X") -> list[str]:
    return [x(prefix, i, j) for i, j in intervals(max_len)]


def typed_bool_vars(names: list[str]) -> str:
    return " ".join(f"({name} Bool)" for name in names)


def eq(lhs: str, rhs: str) -> str:
    return f"(= {lhs} {rhs})"


def decode_smt_string(literal: str) -> str:
    body = literal[1:-1]
    out: list[str] = []
    i = 0
    while i < len(body):
        ch = body[i]
        if ch == '"' and i + 1 < len(body) and body[i + 1] == '"':
            out.append('"')
            i += 2
        elif ch == "\\":
            if body.startswith("\\u{", i):
                end = body.index("}", i + 3)
                out.append(chr(int(body[i + 3 : end], 16)))
                i = end + 1
            elif i + 1 < len(body):
                out.append(body[i + 1])
                i += 2
            else:
                out.append("\\")
                i += 1
        else:
            out.append(ch)
            i += 1
    return "".join(out)


def parse_string_info(text: str, key: str) -> str:
    match = re.search(rf'\(set-info\s+:{key}\s+"([^"]*)"\)', text)
    return match.group(1) if match else ""


def constructor_name(ch: str) -> str:
    code = ord(ch)
    if code <= 0xFFFF:
        return f"$x{code:02X}"
    return f"$u{code:X}"


def parse_case(index: int) -> dict[str, object]:
    delis_text = (REGPLUS / f"{index:04d}.sl").read_text()
    sygus_text = (SYGUS / f"{index:04d}.sl").read_text()

    words: dict[str, str] = {
        name: decode_smt_string(literal)
        for name, literal in DEFINE_STRING_RE.findall(sygus_text)
    }
    terminals: list[str] = []
    seen: set[str] = set()
    for literal in STR_TO_RE_RE.findall(sygus_text):
        text = decode_smt_string(literal)
        if len(text) != 1:
            raise ValueError(
                f"expected one-character regex terminal in {index:04d}.sl, got {text!r}"
            )
        if text not in seen:
            seen.add(text)
            terminals.append(text)

    constraints: list[tuple[str, bool]] = []
    for neg, name in CONSTRAINT_RE.findall(sygus_text):
        if name not in words:
            raise ValueError(f"constraint references unknown string {name} in {index:04d}.sl")
        constraints.append((name, not neg))

    return {
        "index": index,
        "source": parse_string_info(delis_text, "source"),
        "description": parse_string_info(delis_text, "description"),
        "words": words,
        "terminals": terminals,
        "constraints": constraints,
    }


def r_sem_args(max_len: int, term: str, prefix: str = "X") -> str:
    inputs = ["len", *[f"s_{i}" for i in range(max_len)]]
    return " ".join([term, *inputs, *output_vars(max_len, prefix)])


def start_sem(max_len: int) -> str:
    xs = output_vars(max_len)
    exists_vars = typed_bool_vars(xs)
    clauses = []
    for length in range(max_len + 1):
        clauses.append(
            f"""(exists ({exists_vars})
                    {atom_and([
                        eq("len", str(length)),
                        f"(R.Sem {r_sem_args(max_len, 't1')})",
                        eq("result", x("X", 0, length)),
                    ])}
                )"""
        )
    input_vars = " ".join(["len", *[f"s_{i}" for i in range(max_len)]])
    return f"""(! (match t (
            (($eval t1)
                {atom_or(clauses)}
            )
        )) :input ({input_vars}) :output (result))"""


def leaf_equalities(max_len: int, code: int | None) -> list[str]:
    equalities: list[str] = []
    for i, j in intervals(max_len):
        name = x("X", i, j)
        if j != i + 1:
            rhs = "false"
        elif code is None:
            rhs = f"(< {i} len)"
        else:
            rhs = atom_and([f"(< {i} len)", eq(f"s_{i}", str(code))])
        equalities.append(eq(name, rhs))
    return equalities


def union_equalities(max_len: int) -> list[str]:
    return [
        eq(x("X", i, j), f"(or {x('A', i, j)} {x('B', i, j)})")
        for i, j in intervals(max_len)
    ]


def inter_equalities(max_len: int) -> list[str]:
    return [
        eq(x("X", i, j), f"(and {x('A', i, j)} {x('B', i, j)})")
        for i, j in intervals(max_len)
    ]


def concat_equalities(max_len: int, out: str = "X", left: str = "A", right: str = "B") -> list[str]:
    equalities: list[str] = []
    for i, j in intervals(max_len):
        pieces = [
            f"(and {x(left, i, k)} {x(right, k, j)})" for k in range(i, j + 1)
        ]
        equalities.append(eq(x(out, i, j), atom_or(pieces)))
    return equalities


def option_equalities(max_len: int) -> list[str]:
    return [
        eq(x("X", i, j), "true" if i == j else x("A", i, j))
        for i, j in intervals(max_len)
    ]


def star_aux_equalities(max_len: int, child: str = "A", star: str = "S") -> list[str]:
    equalities: list[str] = []
    for i, j in intervals(max_len):
        if i == j:
            rhs = "true"
        else:
            rhs = atom_or(
                [
                    f"(and {x(child, i, k)} {x(star, k, j)})"
                    for k in range(i + 1, j + 1)
                ]
            )
        equalities.append(eq(x(star, i, j), rhs))
    return equalities


def star_output_equalities(max_len: int, star: str = "S") -> list[str]:
    return [eq(x("X", i, j), x(star, i, j)) for i, j in intervals(max_len)]


def plus_output_equalities(max_len: int, child: str = "A", star: str = "S") -> list[str]:
    equalities: list[str] = []
    for i, j in intervals(max_len):
        if i == j:
            rhs = "false"
        else:
            rhs = atom_or(
                [
                    f"(and {x(child, i, k)} {x(star, k, j)})"
                    for k in range(i + 1, j + 1)
                ]
            )
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


def star_case(max_len: int) -> str:
    aux_vars = " ".join(
        [
            typed_bool_vars(output_vars(max_len, "A")),
            typed_bool_vars(output_vars(max_len, "S")),
        ]
    )
    body = atom_and(
        [
            f"(R.Sem {r_sem_args(max_len, 't1', 'A')})",
            atom_and(star_aux_equalities(max_len)),
            atom_and(star_output_equalities(max_len)),
        ]
    )
    return f"""            (($star t1)
                (exists
                    ({aux_vars})
                    {body}
                )
            )"""


def plus_case(max_len: int) -> str:
    aux_vars = " ".join(
        [
            typed_bool_vars(output_vars(max_len, "A")),
            typed_bool_vars(output_vars(max_len, "S")),
        ]
    )
    body = atom_and(
        [
            f"(R.Sem {r_sem_args(max_len, 't1', 'A')})",
            atom_and(star_aux_equalities(max_len)),
            atom_and(plus_output_equalities(max_len)),
        ]
    )
    return f"""            (($plus t1)
                (exists
                    ({aux_vars})
                    {body}
                )
            )"""


def r_sem(max_len: int, terminals: list[str]) -> str:
    cases = [
        f"""            ($any
                {atom_and(leaf_equalities(max_len, None))}
            )"""
    ]
    for ch in terminals:
        cases.append(
            f"""            ({constructor_name(ch)}
                {atom_and(leaf_equalities(max_len, ord(ch)))}
            )"""
        )
    cases.extend(
        [
            exists_case(
                max_len,
                "($or t1 t2)",
                ["t1", "t2"],
                ["A", "B"],
                union_equalities(max_len),
            ),
            exists_case(
                max_len,
                "($concat t1 t2)",
                ["t1", "t2"],
                ["A", "B"],
                concat_equalities(max_len),
            ),
            exists_case(
                max_len,
                "($inter t1 t2)",
                ["t1", "t2"],
                ["A", "B"],
                inter_equalities(max_len),
            ),
            exists_case(
                max_len,
                "($question t1)",
                ["t1"],
                ["A"],
                option_equalities(max_len),
            ),
            plus_case(max_len),
            star_case(max_len),
        ]
    )
    input_vars = " ".join(["len", *[f"s_{i}" for i in range(max_len)]])
    return f"""(! (match t (
{chr(10).join(cases)}
        )) :input ({input_vars}) :output ({" ".join(output_vars(max_len))}))"""


def constraint_for(word: str, expected: bool, max_len: int) -> str:
    values = [str(ord(ch)) for ch in word]
    values.extend(["0"] * (max_len - len(word)))
    result = "true" if expected else "false"
    args = " ".join([str(len(word)), *values, result])
    return f"(constraint (Start.Sem match_regex {args}))"


def emit_case(case: dict[str, object]) -> str:
    index = int(case["index"])
    words: dict[str, str] = case["words"]  # type: ignore[assignment]
    terminals: list[str] = case["terminals"]  # type: ignore[assignment]
    constraints: list[tuple[str, bool]] = case["constraints"]  # type: ignore[assignment]
    max_len = max((len(word) for word in words.values()), default=0)
    start_args = " ".join(
        ["(t Start)", "(len Int)", *[f"(s_{i} Int)" for i in range(max_len)], "(result Bool)"]
    )
    r_args = " ".join(
        [
            "(t R)",
            "(len Int)",
            *[f"(s_{i} Int)" for i in range(max_len)],
            *[f"({name} Bool)" for name in output_vars(max_len)],
        ]
    )
    terminal_productions = " ".join(f"({constructor_name(ch)})" for ch in terminals)
    constraints_text = "\n".join(
        constraint_for(words[name], expected, max_len) for name, expected in constraints
    )
    header = [
        f";; Reg+_{index:04d}: {case['description']}",
        f";; source: {case['source']}",
        f";; examples: {len(words)}, constraints: {len(constraints)}, max_len: {max_len}",
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
            ($any)
            {terminal_productions}
            ($question R)
            ($plus R)
            ($or R R)
            ($concat R R)
            ($inter R R)
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
        {r_sem(max_len, terminals)}
    )
)

(synth-fun match_regex() Start)

{constraints_text}
(check-synth)
"""


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", type=Path, default=OUT)
    parser.add_argument("--start", type=int, default=1)
    parser.add_argument("--end", type=int, default=322)
    args = parser.parse_args()

    args.out.mkdir(parents=True, exist_ok=True)
    manifest = []
    for index in range(args.start, args.end + 1):
        case = parse_case(index)
        output = emit_case(case)
        out_path = args.out / f"{index:04d}.sl"
        out_path.write_text(output)
        words: dict[str, str] = case["words"]  # type: ignore[assignment]
        constraints: list[tuple[str, bool]] = case["constraints"]  # type: ignore[assignment]
        terminals: list[str] = case["terminals"]  # type: ignore[assignment]
        pos = sum(1 for _, expected in constraints if expected)
        neg = len(constraints) - pos
        max_len = max((len(word) for word in words.values()), default=0)
        manifest_line = (
            f"{index:04d}.sl\tmax_len={max_len}\texamples={len(words)}"
            f"\tconstraints={len(constraints)}\tpos={pos}\tneg={neg}"
            f"\tterminals={len(terminals)}\t{case['description']}"
        )
        manifest.append(manifest_line)
        print(manifest_line)
    (args.out / "MANIFEST.txt").write_text("\n".join(manifest) + "\n")


if __name__ == "__main__":
    main()
