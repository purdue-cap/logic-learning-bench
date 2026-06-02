#!/usr/bin/env python3
"""Flatten Reg/{alpharegex,sipser,tomita} into a single Reg/ dir.

Mirrors the Reg+/ layout (per-source suffixed globals; provenance in set-info):

  Reg/
    NNNN.sl                              (instances, contiguous numbering)
    global/
      signatures.<src>.sl                (one set per source dataset)
      theories.<src>.sl
      models.<src>.sl
    sygus/NNNN.sl                        (moved + renumbered)
    txt/NNNN.txt                         (AlphaRegex format:
                                            <desc>
                                            ++
                                            <pos>
                                            --
                                            <neg>)

alpharegex txt is copied verbatim from the upstream AlphaRegexPublic clone;
sipser/tomita txt is derived from each instance .sl (description from set-info,
positive/negative examples from the wNNNN names in constraints).
"""
from __future__ import annotations

import re
import shutil
from pathlib import Path

ROOT = Path("/Users/chentian/Codes/Rust/delis/benchmark")
REG = ROOT / "Reg"
ALPHA_SRC = Path.home() / "Codes" / "OCaml" / "AlphaRegexPublic" / "benchmarks"

# (legacy_subdir, offset). Process in this order so numbering is stable.
SUITES = [
    ("alpharegex", 0),
    ("sipser", 25),
    ("tomita", 50),
]

CONSTRAINT_RE = re.compile(
    r"\(constraint\s+(?P<neg>\(not\s+)?"
    r"\(RegLan\.Sem\s+r\s+\(RegLan\.Asp\s+(?P<w>w[\w?]+)\b"
)


def instance_files(suite: str):
    src = REG / suite
    return sorted(p for p in src.glob("[0-9]*.sl"))


def rewrite_requires(text: str, suite: str) -> str:
    # ./global/theories.sl -> ./global/theories.<suite>.sl, same for models/signatures
    for base in ("theories", "models", "signatures"):
        text = text.replace(f'"./global/{base}.sl"', f'"./global/{base}.{suite}.sl"')
    return text


def move_instances(suite: str, offset: int) -> list[tuple[int, Path]]:
    """Returns list of (new_idx, original_source_path) for each moved instance."""
    moved = []
    for src in instance_files(suite):
        idx = int(src.stem)
        new_idx = offset + idx
        text = rewrite_requires(src.read_text(), suite)
        (REG / f"{new_idx:04d}.sl").write_text(text)
        moved.append((new_idx, src))
    print(f"  {suite}: moved {len(moved)} instances ({offset+1:04d}..{offset+len(moved):04d})")
    return moved


def move_globals(suite: str):
    g = REG / suite / "global"
    out = REG / "global"
    out.mkdir(exist_ok=True)
    for base in ("signatures", "theories", "models"):
        src = g / f"{base}.sl"
        if not src.exists():
            continue
        text = src.read_text()
        # theories.sl references signatures.sl via (require "./signatures.sl") — re-point.
        # models.sl references signatures.sl the same way.
        text = text.replace(
            f'"./signatures.sl"', f'"./signatures.{suite}.sl"'
        )
        (out / f"{base}.{suite}.sl").write_text(text)
    print(f"  {suite}: moved 3 global files (suffixed .{suite})")


def move_sygus(suite: str, offset: int):
    src_dir = REG / suite / "sygus"
    out = REG / "sygus"
    out.mkdir(exist_ok=True)
    if not src_dir.is_dir():
        return 0
    count = 0
    for p in sorted(src_dir.glob("*.sl")):
        try:
            n = int(p.stem)
        except ValueError:
            continue
        (out / f"{offset + n:04d}.sl").write_text(p.read_text())
        count += 1
    if count:
        print(f"  {suite}: moved {count} sygus files")
    return count


# ----- txt generation -----

ALPHA_NAME_RE = re.compile(r"^no(\d+)_")


def _alpha_upstream(idx: int) -> Path | None:
    """Find AlphaRegexPublic source for index idx (idx is 1-based)."""
    for p in ALPHA_SRC.iterdir():
        m = ALPHA_NAME_RE.match(p.name)
        if m and int(m.group(1)) == idx:
            return p
    return None


def gen_txt_alpharegex(out_idx: int, src_sl: Path):
    """alpharegex: copy upstream verbatim."""
    upstream = _alpha_upstream(int(src_sl.stem))
    if upstream is None:
        print(f"  ! no upstream for {src_sl.name}")
        return
    (REG / "txt" / f"{out_idx:04d}.txt").write_text(upstream.read_text().rstrip() + "\n")


DESC_RE = re.compile(r'\(set-info\s+:description\s+"((?:[^"\\]|\\.)*)"\)')


def gen_txt_from_sl(out_idx: int, src_sl: Path):
    """sipser/tomita: derive description + pos/neg from the .sl file.
    Each word name wXXXX directly encodes the bit string XXXX."""
    text = src_sl.read_text()
    m = DESC_RE.search(text)
    desc = m.group(1).replace('\\"', '"').replace("\\\\", "\\") if m else ""
    pos, neg = [], []
    for cm in CONSTRAINT_RE.finditer(text):
        bits = cm.group("w")[1:]  # strip leading 'w'
        (neg if cm.group("neg") else pos).append(bits)
    lines = [desc, "++", *pos, "--", *neg]
    (REG / "txt" / f"{out_idx:04d}.txt").write_text("\n".join(lines) + "\n")


def gen_txt(suite: str, moved: list[tuple[int, Path]]):
    txt_dir = REG / "txt"
    txt_dir.mkdir(exist_ok=True)
    fn = gen_txt_alpharegex if suite == "alpharegex" else gen_txt_from_sl
    for new_idx, src in moved:
        fn(new_idx, src)
    print(f"  {suite}: wrote {len(moved)} txt files")


# ----- main -----

def main():
    # idempotent: drop existing top-level outputs (instances, global/, sygus/, txt/)
    for p in REG.glob("[0-9]*.sl"):
        p.unlink()
    for sub in ("global", "sygus", "txt"):
        d = REG / sub
        if d.exists() and not (REG / sub).is_symlink():
            # only remove if it's a top-level output dir (not a suite subdir)
            shutil.rmtree(d)

    for suite, offset in SUITES:
        print(f"\n=== {suite} (offset {offset}) ===")
        moved = move_instances(suite, offset)
        move_globals(suite)
        move_sygus(suite, offset)
        gen_txt(suite, moved)

    # cleanup old suite dirs
    removed = []
    for suite, _ in SUITES:
        d = REG / suite
        if d.exists():
            shutil.rmtree(d)
            removed.append(suite)
    if removed:
        print(f"\nremoved old suite dirs: {', '.join(removed)}")


if __name__ == "__main__":
    main()
