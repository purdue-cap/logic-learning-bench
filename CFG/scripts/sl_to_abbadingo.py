#!/usr/bin/env python3
"""Export Delis CFG samples to Abbadingo format for asp4cfg."""

from __future__ import annotations

import argparse
import re
from pathlib import Path


CONSTRAINT_RE = re.compile(
    r"\(constraint\s+(?P<neg>\(not\s+)?"
    r"\(CFG\.Sem\s+g\s+\(CFG\.Asp\s+(?P<model>[A-Za-z0-9_.-]+)\s+"
)


def rows_from_sl(path: Path) -> list[tuple[str, str]]:
    rows: list[tuple[str, str]] = []
    for match in CONSTRAINT_RE.finditer(path.read_text()):
        model = match.group("model")
        negated = match.group("neg") is not None
        if model.startswith("w_p_"):
            word = model.removeprefix("w_p_")
            label = "1"
        elif model.startswith("w_n_"):
            word = model.removeprefix("w_n_")
            label = "0"
        else:
            raise ValueError(f"{path}: unsupported CFG model name {model!r}")
        if negated != (label == "0"):
            raise ValueError(f"{path}: polarity mismatch for {model!r}")
        rows.append((label, word))
    if not rows:
        raise ValueError(f"{path}: no CFG constraints found")
    return rows


def to_abbadingo(rows: list[tuple[str, str]]) -> str:
    alphabet = sorted({symbol for _, word in rows for symbol in word})
    lines = [f"{len(rows)} {len(alphabet)}"]
    for label, word in rows:
        symbols = " ".join(word)
        if symbols:
            lines.append(f"{label} {len(word)} {symbols}")
        else:
            lines.append(f"{label} 0")
    return "\n".join(lines) + "\n"


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Convert benchmark/CFG/*.sl files to asp4cfg Abbadingo inputs."
    )
    parser.add_argument(
        "--input-dir",
        type=Path,
        default=Path(__file__).resolve().parents[1],
        help="Directory containing CFG .sl files.",
    )
    parser.add_argument(
        "--output-dir",
        type=Path,
        default=Path(__file__).resolve().parents[1] / "txt",
        help="Directory for generated .txt files.",
    )
    args = parser.parse_args()

    args.output_dir.mkdir(parents=True, exist_ok=True)
    count = 0
    for sl_path in sorted(args.input_dir.glob("*.sl")):
        out_path = args.output_dir / f"{sl_path.stem}.txt"
        out_path.write_text(to_abbadingo(rows_from_sl(sl_path)))
        count += 1
    print(f"wrote {count} Abbadingo file(s) to {args.output_dir}")


if __name__ == "__main__":
    main()
