#!/usr/bin/env python3
"""Flatten CTL/learnctl/ into CTL/ with numbered instances and kst golden source.

Reads the learnctl bench/kst/ files as golden Kripke structures, copies them
to CTL/kst/. Flattens CTL/learnctl/generated/*.sl into CTL/0001.sl–NNNN.sl
with provenance metadata. Moves theories/ and models/ up to CTL/ level.
"""
from __future__ import annotations

import re
import shutil
from pathlib import Path

ROOT = Path("/Users/chentian/Codes/Rust/delis/benchmark/CTL")
LEARNCTL_SRC = Path("/Users/chentian/Codes/C++/learnctl")
LEARNCTL_DIR = ROOT / "learnctl"


def copy_kst():
    """Copy .kst golden source files from learnctl repo."""
    kst_src = LEARNCTL_SRC / "bench" / "kst"
    kst_dst = ROOT / "kst"
    if kst_dst.exists():
        shutil.rmtree(kst_dst)
    kst_dst.mkdir()

    count = 0
    for f in sorted(kst_src.glob("*.kst")):
        shutil.copy2(f, kst_dst / f.name)
        count += 1
    mutants_src = kst_src / "mutants"
    mutants_dst = kst_dst / "mutants"
    if mutants_src.exists():
        mutants_dst.mkdir(exist_ok=True)
        for f in sorted(mutants_src.glob("*.kst")):
            shutil.copy2(f, mutants_dst / f.name)
            count += 1
    print(f"kst/: {count} files")


def move_shared():
    """Move theories/ and models/ to CTL/ top level."""
    for name in ("theories", "models"):
        src = LEARNCTL_DIR / "common" / name if name == "models" else LEARNCTL_DIR / name
        dst = ROOT / name
        if src.exists() and not dst.exists():
            shutil.copytree(src, dst)
            print(f"{name}/: {sum(1 for _ in dst.rglob('*.sl'))} files")
        elif dst.exists():
            print(f"{name}/: already exists ({sum(1 for _ in dst.rglob('*.sl'))} files)")


_CTL_ASP_RE = re.compile(r"\(CTL\.Asp\s+([^\s)]+)\s+[^\s)]+\s+[^\s)]+\)")


def rewrite_constraint(line: str) -> str:
    """Replace (CTL.Asp model state depth) with (CTL.Asp model initial (bound initial))."""
    return _CTL_ASP_RE.sub(r"(CTL.Asp \1 initial (bound initial))", line)


def flatten_instances():
    """Flatten generated/ into numbered instances at CTL/ top level."""
    gen_dir = LEARNCTL_DIR / "generated"
    instances = sorted(f for f in gen_dir.glob("*.sl"))
    print(f"Flattening {len(instances)} instances")

    # Remove old numbered files
    for old in ROOT.glob("[0-9][0-9][0-9][0-9].sl"):
        old.unlink()

    for idx, src in enumerate(instances, start=1):
        num = f"{idx:04d}"
        desc_name = src.stem  # e.g. "goat--goat_m1--all-E"

        content = src.read_text()
        # Add provenance metadata after require lines
        lines = content.split("\n")
        insert_idx = 0
        for i, line in enumerate(lines):
            if line.startswith("(require"):
                insert_idx = i + 1
            else:
                break

        # Find last require line
        for i, line in enumerate(lines):
            if line.startswith("(require"):
                insert_idx = i + 1

        meta = [
            '(set-info :author "Chentian Wu")',
            f'(set-info :source "learnctl — {desc_name}")',
        ]
        lines = lines[:insert_idx] + meta + lines[insert_idx:]

        # Rewrite require paths: ../theories/ → theories/, ../common/models/ → models/
        # Rewrite constraints to use initial / (bound initial) instead of literal elements
        new_lines = []
        for line in lines:
            line = line.replace("../theories/", "theories/")
            line = line.replace("../common/models/", "models/")
            line = rewrite_constraint(line)
            new_lines.append(line)

        (ROOT / f"{num}.sl").write_text("\n".join(new_lines))

    print(f"Generated {len(instances)} instances (0001–{len(instances):04d})")


def main():
    copy_kst()
    move_shared()
    # Route Ctr sentinels ($0/bot) through declared constants (czero/cbot) so
    # semantic bodies never name finite-model elements directly.
    from migrate_ctl_sentinels import main as migrate_sentinels

    migrate_sentinels()
    flatten_instances()


if __name__ == "__main__":
    main()
