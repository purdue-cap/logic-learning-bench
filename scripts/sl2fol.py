#!/usr/bin/env python3
"""Convert delis FO benchmark .sl models → FOLseparators .fol format.

For each instance NNNN, combines:
  - fol/NNNN.fol          (sig + axioms + conjecture, already extracted)
  - global/models/NNNN.sl (finite structures in delis format)
  - FO0/NNNN.sl           (constraint labels: which models are +/-)
  - global/signatures/X.sl (sort/relation/function declarations)

Output: fol/NNNN.fol updated with (model ...) and (constraint ...) blocks.
"""
from __future__ import annotations

import re
import sys
from itertools import product
from pathlib import Path
from typing import Any

ROOT = Path("/Users/chentian/Codes/Rust/delis/benchmark/FO")


# ---- s-expression parser ----

def tokenize(text: str) -> list[str]:
    tokens = []
    i = 0
    while i < len(text):
        c = text[i]
        if c == ';':
            while i < len(text) and text[i] != '\n':
                i += 1
            continue
        if c in '()':
            tokens.append(c)
            i += 1
        elif c in ' \t\n\r':
            i += 1
        elif c == '"':
            j = i + 1
            while j < len(text) and text[j] != '"':
                if text[j] == '\\':
                    j += 1
                j += 1
            tokens.append(text[i:j + 1])
            i = j + 1
        else:
            j = i
            while j < len(text) and text[j] not in '() \t\n\r;':
                j += 1
            tokens.append(text[i:j])
            i = j
    return tokens


def parse_sexp(tokens: list[str], pos: int = 0) -> tuple[Any, int]:
    if tokens[pos] == '(':
        lst = []
        pos += 1
        while tokens[pos] != ')':
            val, pos = parse_sexp(tokens, pos)
            lst.append(val)
        return lst, pos + 1
    else:
        return tokens[pos], pos + 1


def parse_all(text: str) -> list:
    tokens = tokenize(text)
    result = []
    pos = 0
    while pos < len(tokens):
        val, pos = parse_sexp(tokens, pos)
        result.append(val)
    return result


# ---- signature parsing ----

class Sig:
    def __init__(self):
        self.sorts: list[str] = []
        self.relations: dict[str, list[str]] = {}   # name → [sort, ...]
        self.functions: dict[str, tuple[list[str], str]] = {}  # name → ([arg sorts], ret sort)
        self.constants: dict[str, str] = {}          # name → sort


def parse_sig(path: Path) -> Sig:
    sig = Sig()
    for expr in parse_all(path.read_text()):
        if not isinstance(expr, list):
            continue
        cmd = expr[0]
        if cmd == 'declare-sort':
            sig.sorts.append(expr[1])
        elif cmd == 'declare-fun':
            name = expr[1]
            arg_sorts = expr[2]
            ret_sort = expr[3]
            if ret_sort == 'Bool':
                sig.relations[name] = arg_sorts
            elif len(arg_sorts) == 0:
                sig.constants[name] = ret_sort
            else:
                sig.functions[name] = (arg_sorts, ret_sort)
    return sig


# ---- model parsing ----

class Model:
    def __init__(self, name: str):
        self.name = name
        self.univs: dict[str, list[str]] = {}  # sort → [elems]
        self.rel_true: dict[str, list[tuple[str, ...]]] = {}  # rel → tuples where true
        self.fun_vals: dict[str, dict[tuple[str, ...], str]] = {}  # fun → {args: result}
        self.const_vals: dict[str, str] = {}  # const → elem


def _expand_match(match_body: list, univs: dict[str, list[str]], arg_sorts: list[str]) -> dict[tuple[str, ...], Any]:
    """Expand a match expression into a dict from concrete tuples to values.

    match_body is the parsed (match (...)) — match_body[0] == 'match',
    match_body[1] is the list of arms, each arm = [pattern_list, value].
    """
    arms = match_body[1]
    all_elems = [univs[s] for s in arg_sorts]
    all_tuples = list(product(*all_elems))
    result = {}
    for tup in all_tuples:
        for arm in arms:
            pattern = arm[0]  # list of element names or '_'
            value = arm[1]
            matched = True
            for p, e in zip(pattern, tup):
                if p != '_' and p != e:
                    matched = False
                    break
            if matched:
                result[tup] = value
                break
    return result


def parse_models(path: Path, sig: Sig) -> list[Model]:
    models = []
    for expr in parse_all(path.read_text()):
        if not isinstance(expr, list):
            continue
        if expr[0] == 'define-model':
            m = Model(expr[1])
            for sub in expr[2:]:
                if sub[0] == 'define-univ':
                    sort = sub[1]
                    m.univs[sort] = sub[2]
                elif sub[0] == 'interp-fun':
                    name = sub[1]
                    body = sub[2]
                    # unwrap bare paren: (value) → value
                    if isinstance(body, list) and len(body) == 1 and isinstance(body[0], str):
                        body = body[0]
                    if name in sig.relations:
                        arg_sorts = sig.relations[name]
                        if len(arg_sorts) == 0:
                            if body == 'true':
                                m.rel_true[name] = [()]
                            else:
                                m.rel_true[name] = []
                        elif isinstance(body, list) and body[0] == 'match':
                            expanded = _expand_match(body, m.univs, arg_sorts)
                            m.rel_true[name] = [t for t, v in expanded.items() if v == 'true']
                        else:
                            m.rel_true[name] = []
                    elif name in sig.constants:
                        m.const_vals[name] = body
                    elif name in sig.functions:
                        arg_sorts, _ret = sig.functions[name]
                        if isinstance(body, list) and body[0] == 'match':
                            m.fun_vals[name] = _expand_match(body, m.univs, arg_sorts)
                        else:
                            m.fun_vals[name] = {}
            models.append(m)
    return models


# ---- .fol output ----

def model_to_fol(m: Model, sig: Sig) -> str:
    label = m.name
    # Element list
    elems = []
    for sort in sig.sorts:
        for e in m.univs.get(sort, []):
            elems.append(f"({e} {sort})")
    elem_str = " ".join(elems)

    facts = []
    # Relations: list true tuples
    for rel in sorted(sig.relations.keys()):
        for tup in m.rel_true.get(rel, []):
            if len(tup) == 0:
                facts.append(f"  ({rel})")
            else:
                facts.append(f"  ({rel} {' '.join(tup)})")
    # Constants
    for const in sorted(sig.constants.keys()):
        if const in m.const_vals:
            facts.append(f"  (= {const} {m.const_vals[const]})")
    # Functions: all tuples
    for fun in sorted(sig.functions.keys()):
        if fun in m.fun_vals:
            for args, val in sorted(m.fun_vals[fun].items()):
                facts.append(f"  (= ({fun} {' '.join(args)}) {val})")

    facts_str = "\n".join(facts)
    return f"(model {label}\n  ({elem_str})\n{facts_str}\n)"


# ---- constraint parsing ----

def parse_constraints(path: Path) -> list[tuple[str, bool]]:
    """Parse instance file to get (model_name, is_positive) pairs."""
    constraints = []
    for expr in parse_all(path.read_text()):
        if not isinstance(expr, list):
            continue
        if expr[0] == 'constraint':
            body = expr[1]
            if isinstance(body, list) and body[0] == 'not':
                # (constraint (not (FO.Sem phi (FO.Asp NAME))))
                inner = body[1]
                name = inner[2][1]  # (FO.Asp NAME)
                constraints.append((name, False))
            elif isinstance(body, list):
                # (constraint (FO.Sem phi (FO.Asp NAME)))
                name = body[2][1]
                constraints.append((name, True))
    return constraints


def constraints_to_fol(constraints: list[tuple[str, bool]]) -> str:
    parts = []
    for name, is_pos in constraints:
        if is_pos:
            parts.append(name)
        else:
            parts.append(f"(not {name})")
    return f"(constraint {' '.join(parts)})"


# ---- main ----

def find_sig_for_model(model_path: Path) -> Path:
    """Extract signature path from model file's require line."""
    text = model_path.read_text()
    for expr in parse_all(text):
        if isinstance(expr, list) and expr[0] == 'require':
            req = expr[1].strip('"')
            return model_path.parent / req
    raise RuntimeError(f"No require in {model_path}")


def main():
    fol_dir = ROOT / "fol"
    fo0_dir = ROOT / "FO0"
    models_dir = ROOT / "global" / "models"

    sig_cache: dict[str, Sig] = {}
    count = 0

    for n in range(1, 321):
        num = f"{n:04d}"
        fol_path = fol_dir / f"{num}.fol"
        model_path = models_dir / f"{num}.sl"
        instance_path = fo0_dir / f"{num}.sl"

        if not fol_path.exists() or not model_path.exists() or not instance_path.exists():
            print(f"  skip {num}: missing files")
            continue

        # Find and parse signature
        sig_path = find_sig_for_model(model_path)
        sig_key = str(sig_path)
        if sig_key not in sig_cache:
            sig_cache[sig_key] = parse_sig(sig_path)
        sig = sig_cache[sig_key]

        # Parse models
        models = parse_models(model_path, sig)

        # Parse constraints
        constraints = parse_constraints(instance_path)

        # Read existing .fol (sig + axioms + conjecture)
        fol_text = fol_path.read_text().rstrip()

        # Append models and constraints
        model_blocks = [model_to_fol(m, sig) for m in models]
        constraint_line = constraints_to_fol(constraints)

        out = fol_text + "\n\n" + "\n".join(model_blocks) + "\n\n" + constraint_line + "\n"
        fol_path.write_text(out)
        count += 1

    print(f"converted {count} instances")


if __name__ == "__main__":
    main()
