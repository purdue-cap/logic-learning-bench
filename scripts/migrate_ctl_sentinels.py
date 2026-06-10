#!/usr/bin/env python3
"""Migrate CTL theories/models off bare Ctr element tokens ($0, bot).

The disciplined compiler forbids naming finite-model elements directly in
semantic bodies. CTL theories compared the depth counter against the literal
Ctr elements `$0` and `bot`. This rewrites those comparisons to go through two
declared nullary constants, `czero` and `cbot`, interpreted per-model.

Idempotent: re-running detects existing czero/cbot and skips.
"""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent / "CTL"
THEORIES = ROOT / "theories"
MODELS = ROOT / "models"


def migrate_theory(path: Path) -> bool:
    text = path.read_text()
    if "czero" in text or "cbot" in text:
        return False
    lines = text.split("\n")
    out: list[str] = []
    for line in lines:
        # Extend the provide list with the two new constants.
        if line.startswith("(provide ") and " czero " not in line:
            line = line.rstrip()
            assert line.endswith(")"), f"unexpected provide line in {path}"
            line = line[:-1] + " czero cbot)"
            out.append(line)
            continue
        out.append(line)
        # Declare the constants right after `initial`.
        if line.strip() == "(declare-fun initial () U)":
            out.append("(declare-fun czero () Ctr)")
            out.append("(declare-fun cbot () Ctr)")
    new_text = "\n".join(out)
    # Body: route the two sentinel comparisons through the constants.
    new_text = re.sub(r"\$0\b", "czero", new_text)
    new_text = re.sub(r"\bbot\b", "cbot", new_text)
    path.write_text(new_text)
    return True


def migrate_model(path: Path) -> bool:
    text = path.read_text()
    if "(interp-fun czero" in text:
        return False
    lines = text.split("\n")
    out: list[str] = []
    for line in lines:
        out.append(line)
        # Interpret the constants against this model's own Ctr universe.
        if re.match(r"\s*\(interp-sort Ctr ", line):
            indent = line[: len(line) - len(line.lstrip())]
            out.append(f"{indent}(interp-fun czero ($0))")
            out.append(f"{indent}(interp-fun cbot (bot))")
    path.write_text("\n".join(out))
    return True


def main() -> None:
    t = sum(migrate_theory(p) for p in sorted(THEORIES.glob("*.sl")))
    m = sum(migrate_model(p) for p in sorted(MODELS.glob("*.sl")))
    print(f"theories migrated: {t}")
    print(f"models migrated:   {m}")


if __name__ == "__main__":
    main()
