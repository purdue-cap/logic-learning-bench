#!/usr/bin/env python3
"""Align Reg+ SyGuS grammars with the Delis RegLan terminal set.

Each Reg+ Delis instance requires one of the global RegLan theories.  This
script reads that theory, extracts its ``char.*`` constructors, and rewrites
the matching ``Reg+/sygus/NNNN.sl`` grammar block while preserving examples
and constraints.
"""

from __future__ import annotations

import argparse
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
REGPLUS = ROOT / "Reg+"
SYGUS = REGPLUS / "sygus"

THEORY_REQUIRE_RE = re.compile(r'\(require\s+"\.\/global\/(theories\.[^"]+\.sl)"\)')
PROVIDE_RE = re.compile(r"\(provide\s+([^)]*)\)", re.S)


def smt_string_for_code(code: int) -> str:
    if code == 0x22:
        return '""""'
    if code == 0x5C:
        return '"\\u{5C}"'
    if 0x20 <= code < 0x7F:
        return f'"{chr(code)}"'
    return f'"\\u{{{code:X}}}"'


def singleton(code: int) -> str:
    return f"(str.to_re {smt_string_for_code(code)})"


def runion(terms: list[str]) -> str:
    if not terms:
        raise ValueError("empty regex union")
    if len(terms) == 1:
        return terms[0]
    expr = terms[-1]
    for term in reversed(terms[:-1]):
        expr = f"(re.union {term} {expr})"
    return expr


def regex_for_term(term: str) -> str:
    if term == "char.any":
        return "re.allchar"
    if term == "char.digit":
        return '(re.range "0" "9")'
    if term == "char.lower":
        return '(re.range "a" "z")'
    if term == "char.upper":
        return '(re.range "A" "Z")'
    if term == "char.alpha":
        return runion([regex_for_term("char.upper"), regex_for_term("char.lower")])
    if term == "char.alnum":
        return runion([regex_for_term("char.alpha"), regex_for_term("char.digit")])
    if term == "char.word":
        return runion([regex_for_term("char.alnum"), singleton(ord("_"))])
    if term == "char.space":
        return runion([singleton(ord(" ")), singleton(0x09), singleton(0x0A)])
    if term == "char.hex":
        return runion(
            [
                regex_for_term("char.digit"),
                '(re.range "a" "f")',
                '(re.range "A" "F")',
            ]
        )
    if term.startswith("char.x"):
        return singleton(int(term[6:], 16))
    raise ValueError(f"unsupported RegLan terminal: {term}")


def theory_for_case(index: int) -> Path:
    delis_text = (REGPLUS / f"{index:04d}.sl").read_text()
    match = THEORY_REQUIRE_RE.search(delis_text)
    if not match:
        raise ValueError(f"could not find theory require in Reg+/{index:04d}.sl")
    return REGPLUS / "global" / match.group(1)


def char_terms_from_theory(path: Path) -> list[str]:
    text = path.read_text()
    match = PROVIDE_RE.search(text)
    if not match:
        raise ValueError(f"could not find provide list in {path}")
    terms = [term for term in match.group(1).split() if term.startswith("char.")]
    if not terms:
        raise ValueError(f"no character terminals in {path}")
    return terms


def rewrite_case(index: int) -> None:
    path = SYGUS / f"{index:04d}.sl"
    lines = path.read_text().splitlines()
    terms = char_terms_from_theory(theory_for_case(index))
    grammar_terms = [regex_for_term(term) for term in terms]
    grammar_terms.extend(
        [
            "(re.opt Start)",
            "(re.++ Start Start)",
            "(re.union Start Start)",
            "(re.inter Start Start)",
            "(re.* Start)",
            "(re.+ Start)",
        ]
    )

    for i, line in enumerate(lines):
        if "Grammar mirrors" in line:
            lines[i] = "; Grammar mirrors the Delis RegLan terminal set plus standard ops."
            break

    start = None
    for i, line in enumerate(lines):
        if line.strip() == "(Start RegLan":
            start = i + 2
            break
    if start is None or start >= len(lines):
        raise ValueError(f"could not find SyGuS grammar start in {path}")
    end = None
    for i in range(start, len(lines)):
        if lines[i].strip() == ")":
            end = i
            break
    if end is None:
        raise ValueError(f"could not find SyGuS grammar end in {path}")

    replacement = [f"                {term}" for term in grammar_terms]
    path.write_text("\n".join([*lines[:start], *replacement, *lines[end:]]) + "\n")


def read_indices(args: argparse.Namespace) -> list[int]:
    if args.ids_file:
        indices = []
        for line in args.ids_file.read_text().splitlines():
            entry = line.split("#", 1)[0].strip()
            if entry:
                indices.append(int(entry.removesuffix(".sl")))
        return indices
    return list(range(args.start, args.end + 1))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--start", type=int, default=1)
    parser.add_argument("--end", type=int, default=322)
    parser.add_argument("--ids-file", type=Path)
    args = parser.parse_args()

    for index in read_indices(args):
        rewrite_case(index)
        print(f"{index:04d}.sl")


if __name__ == "__main__":
    main()
