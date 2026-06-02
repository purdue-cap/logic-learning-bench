#!/usr/bin/env python3
"""Flatten FO/folseparators/ into FO/ and renumber instances + models.

Phase 1 (flatten): common/ → global/, FO{0..3}/ up one level, require rewrites.
Phase 2 (renumber): descriptive names → 0001.sl..0320.sl for instances and models.
"""
from __future__ import annotations

import re
import shutil
from pathlib import Path

ROOT = Path("/Users/chentian/Codes/Rust/delis/benchmark/FO")
SRC = ROOT / "folseparators"


# ---- phase 1: flatten folseparators/ ----

def move_global():
    src = SRC / "common"
    dst = ROOT / "global"
    if not src.exists():
        return
    if dst.exists():
        shutil.rmtree(dst)
    shutil.copytree(src, dst)
    print(f"global/: {sum(1 for _ in dst.rglob('*.sl'))} files")


def flatten_levels():
    if not SRC.exists():
        return
    for n in range(4):
        src = SRC / f"FO{n}"
        dst = ROOT / f"FO{n}"
        if dst.exists():
            shutil.rmtree(dst)
        shutil.copytree(src, dst)
        for p in sorted(dst.glob("*.sl")):
            text = p.read_text()
            new = text.replace('"../common/', '"../global/')
            if new != text:
                p.write_text(new)
        for p in sorted((dst / "theories").glob("*.sl")):
            text = p.read_text()
            new = text.replace('"../../common/', '"../../global/')
            if new != text:
                p.write_text(new)
        instances = sum(1 for _ in dst.glob("*.sl"))
        print(f"FO{n}/: {instances} instances")


def cleanup_folseparators():
    if SRC.exists():
        shutil.rmtree(SRC)
        print(f"removed folseparators/")


# ---- phase 2: renumber instances + models ----

def _source_label(name: str) -> str:
    """'lockserv-mutex' → 'FOLseparators — lockserv/mutex'"""
    parts = name.split("-", 1)
    if len(parts) == 2:
        return f"FOLseparators ({parts[0]}/{parts[1]})"
    return f"FOLseparators ({name})"


def renumber():
    models_dir = ROOT / "global" / "models"
    old_names = sorted(p.stem for p in models_dir.glob("*.sl"))
    name_to_num = {name: f"{i + 1:04d}" for i, name in enumerate(old_names)}
    print(f"\nrenumbering {len(old_names)} instances+models → 0001..{len(old_names):04d}")

    # Rename model files
    for old_name, num in name_to_num.items():
        src = models_dir / f"{old_name}.sl"
        dst = models_dir / f"{num}.sl"
        src.rename(dst)
    print(f"  global/models/: renamed {len(old_names)} files")

    # Rename + rewrite instance files in each FO level
    for n in range(4):
        d = ROOT / f"FO{n}"
        count = 0
        for old_name, num in name_to_num.items():
            src = d / f"{old_name}.sl"
            if not src.exists():
                continue
            text = src.read_text()
            text = text.replace(
                f'"../global/models/{old_name}.sl"',
                f'"../global/models/{num}.sl"',
            )
            header = (
                f'(set-info :author "Chentian Wu")\n'
                f'(set-info :source "{_source_label(old_name)}")\n\n'
            )
            text = header + text
            dst = d / f"{num}.sl"
            dst.write_text(text)
            if src != dst:
                src.unlink()
            count += 1
        print(f"  FO{n}/: renamed {count} instances")


RENAMES = [
    ("FO.Sem0", "FO.Sem"),
    ("FoAsp0", "FO.Asp"),
    ("FoAsp", "FO.Asp"),
    ("Formula0", "FO0"),
]


def rename_symbols():
    count = 0
    for p in ROOT.rglob("*.sl"):
        if "global/signatures" in str(p) or "global/models" in str(p):
            continue
        text = p.read_text()
        new = text
        for old, repl in RENAMES:
            new = new.replace(old, repl)
        if new != text:
            p.write_text(new)
            count += 1
    print(f"\nrenamed symbols in {count} files")


def main():
    move_global()
    flatten_levels()
    cleanup_folseparators()
    renumber()
    rename_symbols()


if __name__ == "__main__":
    main()
