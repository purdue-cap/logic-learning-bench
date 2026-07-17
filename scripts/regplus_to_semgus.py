#!/usr/bin/env python3
"""Generate SemGuS regular-expression benchmarks from benchmark/Reg+.

The generated grammar mirrors the Delis RegLan terminal set used by each
benchmark instance.  The semantics are finite-interval Boolean semantics:
each regex term denotes, for a fixed example length, which substrings it
matches.  Characters are represented by integer code points, avoiding native
SMT regex values that ks2 does not operationalize reliably.
"""

from __future__ import annotations

import argparse
import csv
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
REGPLUS = ROOT / "Reg+"
SYGUS = REGPLUS / "sygus"
TXT = REGPLUS / "txt"
OUT = REGPLUS / "semgus"


DEFINE_STRING_RE = re.compile(
    r"\(define-fun\s+(w\d+)\s+\(\)\s+String\s+"
    r'("(?:\\u\{[0-9A-Fa-f]+\}|""|\\.|[^"\\])*")\s*\)',
    re.S,
)
CONSTRAINT_RE = re.compile(
    r"\(constraint\s+(\(not\s+)?\(str\.in_re\s+(w\d+)\s+r\)\)?\s*\)"
)
THEORY_REQUIRE_RE = re.compile(r'\(require\s+"\.\/global\/(theories\.[^"]+\.sl)"\)')
PROVIDE_RE = re.compile(r"\(provide\s+([^)]*)\)", re.S)


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


def constructor_name(term: str) -> str:
    if term == "char.any":
        return "$any"
    if term.startswith("char.x"):
        return f"$x{term[6:].upper()}"
    if term.startswith("char."):
        return f"${term[5:]}"
    raise ValueError(f"unsupported terminal term: {term}")


def theory_for_case(index: int, delis_text: str) -> Path:
    match = THEORY_REQUIRE_RE.search(delis_text)
    if not match:
        raise ValueError(f"could not find Reg+ theory require in {index:04d}.sl")
    return REGPLUS / "global" / match.group(1)


def char_terms_from_theory(path: Path) -> list[str]:
    text = path.read_text()
    match = PROVIDE_RE.search(text)
    if not match:
        raise ValueError(f"could not find provide list in {path}")
    terms = [term for term in match.group(1).split() if term.startswith("char.")]
    if not terms:
        raise ValueError(f"no character terminals found in {path}")
    return terms


def code_for_xterm(term: str) -> int:
    if not term.startswith("char.x"):
        raise ValueError(term)
    return int(term[6:], 16)


def char_test(term: str, value: str) -> str:
    if term == "char.any":
        return "true"
    if term == "char.digit":
        return f"(and (<= 48 {value}) (<= {value} 57))"
    if term == "char.lower":
        return f"(and (<= 97 {value}) (<= {value} 122))"
    if term == "char.upper":
        return f"(and (<= 65 {value}) (<= {value} 90))"
    if term == "char.alpha":
        return f"(or {char_test('char.upper', value)} {char_test('char.lower', value)})"
    if term == "char.alnum":
        return f"(or {char_test('char.alpha', value)} {char_test('char.digit', value)})"
    if term == "char.word":
        return f"(or {char_test('char.alnum', value)} (= {value} 95))"
    if term == "char.space":
        return f"(or (= {value} 32) (= {value} 9) (= {value} 10))"
    if term == "char.hex":
        return (
            f"(or {char_test('char.digit', value)} "
            f"(and (<= 97 {value}) (<= {value} 102)) "
            f"(and (<= 65 {value}) (<= {value} 70)))"
        )
    if term.startswith("char.x"):
        return f"(= {value} {code_for_xterm(term)})"
    raise ValueError(f"unsupported terminal term: {term}")


def parse_txt_examples(index: int) -> list[tuple[str, bool]]:
    path = TXT / f"{index:04d}.txt"
    if not path.is_file():
        return []
    examples: list[tuple[str, bool]] = []
    in_examples = False
    for raw in path.read_text(errors="replace").splitlines():
        stripped = raw.strip()
        marker = re.sub(r"\s+", "", stripped).lower()
        if marker in {"//ex", "//example", "//examples"}:
            in_examples = True
            continue
        if marker == "//gt":
            break
        if not in_examples or not stripped or stripped.startswith("//"):
            continue
        try:
            row = next(csv.reader([stripped]))
        except csv.Error:
            continue
        if len(row) != 2:
            continue
        label = row[1].strip()
        if label in {"+", "-"}:
            examples.append((row[0], label == "+"))
    return examples


def parse_case(index: int) -> dict[str, object]:
    delis_text = (REGPLUS / f"{index:04d}.sl").read_text()
    sygus_text = (SYGUS / f"{index:04d}.sl").read_text()

    words: dict[str, str] = {
        name: decode_smt_string(literal)
        for name, literal in DEFINE_STRING_RE.findall(sygus_text)
    }
    terminals = char_terms_from_theory(theory_for_case(index, delis_text))

    constraints: list[tuple[str, bool]] = []
    for neg, name in CONSTRAINT_RE.findall(sygus_text):
        if name not in words:
            raise ValueError(f"constraint references unknown string {name} in {index:04d}.sl")
        constraints.append((name, not neg))

    if not constraints:
        txt_examples = parse_txt_examples(index)
        if txt_examples:
            words = {
                f"w{example_index}": word
                for example_index, (word, _) in enumerate(txt_examples, start=1)
            }
            constraints = [
                (f"w{example_index}", expected)
                for example_index, (_, expected) in enumerate(txt_examples, start=1)
            ]

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


def leaf_equalities(max_len: int, term: str) -> list[str]:
    equalities: list[str] = []
    for i, j in intervals(max_len):
        name = x("X", i, j)
        if j != i + 1:
            rhs = "false"
        else:
            rhs = atom_and([f"(< {i} len)", char_test(term, f"s_{i}")])
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
    cases = []
    for term in terminals:
        cases.append(
            f"""            ({constructor_name(term)}
                {atom_and(leaf_equalities(max_len, term))}
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
    terminal_productions = " ".join(f"({constructor_name(term)})" for term in terminals)
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
    parser.add_argument("--ids-file", type=Path)
    args = parser.parse_args()

    args.out.mkdir(parents=True, exist_ok=True)
    manifest = []
    if args.ids_file:
        indices = [
            int(line.split("#", 1)[0].strip().removesuffix(".sl"))
            for line in args.ids_file.read_text().splitlines()
            if line.split("#", 1)[0].strip()
        ]
    else:
        indices = list(range(args.start, args.end + 1))
    for index in indices:
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
    if not args.ids_file:
        (args.out / "MANIFEST.txt").write_text("\n".join(manifest) + "\n")


if __name__ == "__main__":
    main()
