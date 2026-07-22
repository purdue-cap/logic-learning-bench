#!/usr/bin/env python3
"""Migrate Delis benchmark .sl files to paper-aligned syntax.

Three transformations:
1. Quantifier domains: (univ (Sort (model asp))) -> Sort
2. Aspect records: remove (model Model) field
3. Constraints: extract model arg from aspect constructor, wrap in (with-model M ...)

Also in semantic bodies: remove (model asp) from aspect constructor calls.

Usage: python3 migrate_benchmarks.py <file-or-dir> [...]
"""

import re
import sys
from pathlib import Path

# --- 1. Quantifier domain migration ---
# (forall ((k (univ (Pos (model asp))))) ...) -> (forall ((k Pos)) ...)
UNIV_RE = re.compile(
    r'\(univ\s+\((\w+)\s+\(model\s+\w+\)\)\)'
)

def migrate_univ(text: str) -> str:
    return UNIV_RE.sub(r'\1', text)

# --- 2. Aspect record migration ---
# Remove (model Model) from record, preserving surrounding whitespace.
# Matches "(model Model)" with optional surrounding spaces.
def migrate_aspect_record(text: str) -> str:
    # Remove "(model Model) " or " (model Model)" or just "(model Model)"
    text = re.sub(r'\(model\s+Model\)\s+', '', text)
    text = re.sub(r'\s+\(model\s+Model\)', '', text)
    text = re.sub(r'\(model\s+Model\)', '', text)
    return text

# --- 3. Semantic body: remove (model asp) from aspect constructor calls ---
# (LTL.Asp (model asp) k) -> (LTL.Asp k)
# (RegLan.Asp (model asp) (i asp) k) -> (RegLan.Asp (i asp) k)
def migrate_semantic_body(text: str) -> str:
    # Remove "(model asp) " or " (model asp)" or just "(model asp)"
    text = re.sub(r'\(model\s+asp\)\s+', '', text)
    text = re.sub(r'\s+\(model\s+asp\)', '', text)
    text = re.sub(r'\(model\s+asp\)', '', text)
    return text

# --- 4. Constraint migration ---

def find_matching_paren(text: str, start: int) -> int:
    depth = 0
    i = start
    while i < len(text):
        if text[i] == '(':
            depth += 1
        elif text[i] == ')':
            depth -= 1
            if depth == 0:
                return i
        i += 1
    return -1

def split_top_level(content: str) -> list:
    parts = []
    i = 0
    while i < len(content):
        while i < len(content) and content[i] in ' \t\n':
            i += 1
        if i >= len(content):
            break
        if content[i] == '(':
            end = find_matching_paren(content, i)
            if end == -1:
                break
            parts.append(content[i:end+1])
            i = end + 1
        else:
            j = i
            while j < len(content) and content[j] not in ' \t\n)':
                j += 1
            parts.append(content[i:j])
            i = j
    return parts

def is_aspect_constructor_with_model(expr: str) -> tuple:
    """Check if expr is an aspect constructor call where first arg is a model name.
    Returns (aspect_name, model_arg, rest_args) or None.
    Heuristic: head must contain 'Asp' and first arg must be a bare symbol."""
    if not expr.startswith('(') or not expr.endswith(')'):
        return None
    inner = expr[1:-1]
    parts = split_top_level(inner)
    if len(parts) < 2:
        return None
    head = parts[0]
    if 'Asp' not in head:
        return None
    model = parts[1]
    if model.startswith('('):
        return None
    rest = parts[2:]
    return (head, model, rest)

def migrate_constraints(text: str) -> str:
    """Migrate constraint lines."""
    lines = text.split('\n')
    result = []
    for line in lines:
        stripped = line.strip()
        if not stripped.startswith('(constraint'):
            result.append(line)
            continue

        constraint_start = line.find('(constraint')
        if constraint_start == -1:
            result.append(line)
            continue

        inner_start = line.find('(', constraint_start + len('(constraint'))
        if inner_start == -1:
            result.append(line)
            continue

        inner_end = find_matching_paren(line, inner_start)
        if inner_end == -1:
            result.append(line)
            continue

        inner_expr = line[inner_start:inner_end+1]
        prefix = line[:inner_start]
        suffix = line[inner_end+1:]

        # Check for (not ...) wrapper
        is_negative = False
        sem_expr = inner_expr
        if re.match(r'\(not\s', inner_expr):
            not_inner_start = inner_expr.find('(', 4)
            if not_inner_start != -1:
                not_inner_end = find_matching_paren(inner_expr, not_inner_start)
                remaining = inner_expr[not_inner_end+1:].strip()
                if remaining == ')':
                    is_negative = True
                    sem_expr = inner_expr[not_inner_start:not_inner_end+1]

        if not sem_expr.startswith('('):
            result.append(line)
            continue

        sem_inner = sem_expr[1:-1]
        sem_parts = split_top_level(sem_inner)
        if len(sem_parts) < 2:
            result.append(line)
            continue

        last_part = sem_parts[-1]
        aspect_info = is_aspect_constructor_with_model(last_part)
        if aspect_info is None:
            result.append(line)
            continue

        aspect_name, model_arg, rest_args = aspect_info

        if rest_args:
            new_aspect = f'({aspect_name} {" ".join(rest_args)})'
        else:
            new_aspect = f'({aspect_name})'

        new_sem_parts = sem_parts[:-1] + [new_aspect]
        new_sem_inner = ' '.join(new_sem_parts)
        new_sem_expr = f'({new_sem_inner})'

        wrapped = f'(with-model {model_arg} {new_sem_expr})'

        if is_negative:
            new_inner = f'(not {wrapped})'
        else:
            new_inner = wrapped

        result.append(prefix + new_inner + suffix)

    return '\n'.join(result)

def migrate_file(path: Path) -> bool:
    text = path.read_text()
    original = text

    text = migrate_univ(text)
    text = migrate_aspect_record(text)
    text = migrate_semantic_body(text)
    text = migrate_constraints(text)

    if text != original:
        path.write_text(text)
        return True
    return False

def main():
    if len(sys.argv) < 2:
        print("Usage: python3 migrate_benchmarks.py <file-or-dir> [...]")
        sys.exit(1)

    changed = 0
    total = 0
    for arg in sys.argv[1:]:
        p = Path(arg)
        if p.is_file() and p.suffix == '.sl':
            total += 1
            if migrate_file(p):
                changed += 1
                print(f"  MIGRATED: {p}")
        elif p.is_dir():
            for f in sorted(p.rglob('*.sl')):
                total += 1
                if migrate_file(f):
                    changed += 1
                    print(f"  MIGRATED: {f}")

    print(f"\nDone: {changed}/{total} files migrated")

if __name__ == '__main__':
    main()
