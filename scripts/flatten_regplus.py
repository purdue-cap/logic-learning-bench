#!/usr/bin/env python3
"""Merge upstream REGEL suites (deepregex, stackoverflow) into a single
`Reg+/regel/` benchmark dir with unified numbering.

Layout produced:
  Reg+/regel/
    global/
      signatures.<src>.sl    (one per source — chars actually used by that source)
      theories.<src>.sl
      models.<src>.sl
    NNNN.sl                  (instance files; require the matching source globals)
    sygus/NNNN.sl            (moved from upstream sygus dirs, renumbered)
    txt/NNNN                 (verbatim upstream regel benchmark text)

Numbering: deepregex 1..200 -> 0001..0200; stackoverflow 1..122 -> 0201..0322.

Comment annotations added vs the prior generator:
- Each `(declare-fun is.xNN ...)` is preceded by `; '<char>' (0xNN)`.
- Each `(define-model wNNNNN ...)` is preceded by `; "<original string>"`.

Match simplification: when all arms map to the same value,
`(match ((($0) X) (($1) X) ...))` collapses to `(match (((_) X)))`.

Idempotent: re-running drops the target `regel/` first.
"""
from __future__ import annotations

import re
import shutil
from pathlib import Path

ROOT = Path("/Users/chentian/Codes/Rust/delis")
REGPLUS = ROOT / "benchmark" / "Reg+"
REGEL = Path.home() / "Codes" / "Java" / "regel" / "exp"
OUT = REGPLUS / "regel"

# (delis-side legacy dir, upstream subdir under REGEL, instance-number offset)
SUITES = [
    ("deepregex", "deepregex", 0),
    ("stackoverflow", "so", 200),
]


# ----- upstream parser -----

def parse_upstream(path: Path):
    pos, neg = [], []
    in_ex = False
    for line in path.read_text().splitlines():
        s = line.strip()
        if s.startswith("// example"):
            in_ex = True
            continue
        if s.startswith("//"):
            in_ex = False
            continue
        if not s or not in_ex:
            continue
        m = re.match(r'^"(.*)",([+-])\s*$', s)
        if m:
            (pos if m.group(2) == "+" else neg).append(m.group(1))
    return pos, neg


def upstream_files(upstream_dir: str):
    root = REGEL / upstream_dir / "benchmark"
    files = [p for p in root.iterdir() if p.name.isdigit()]
    return sorted(files, key=lambda p: int(p.name))


# ----- character classes -----

def is_digit(c): return c.isdigit()
def is_lower(c): return c.islower()
def is_upper(c): return c.isupper()
def is_alpha(c): return c.isalpha()
def is_alnum(c): return c.isalnum()
def is_word(c):  return c.isalnum() or c == "_"
def is_space(c): return c in " \t\n"
def is_hex(c):   return c in "0123456789abcdefABCDEF"

STD_PREDS = [
    ("is.any",   lambda c: True,  "any character"),
    ("is.digit", is_digit,        "0-9"),
    ("is.lower", is_lower,        "a-z"),
    ("is.upper", is_upper,        "A-Z"),
    ("is.alpha", is_alpha,        "A-Z, a-z"),
    ("is.alnum", is_alnum,        "A-Z, a-z, 0-9"),
    ("is.word",  is_word,         "A-Z, a-z, 0-9, _"),
    ("is.space", is_space,        "space, tab, newline"),
    ("is.hex",   is_hex,          "0-9, a-f, A-F"),
]


def needs_xpred(c):
    return not (is_alnum(c) or is_space(c))


def char_predname(c):  return f"is.x{ord(c):02X}"


def xpred_comment(xpred: str) -> str:
    code = int(xpred[4:], 16)
    ch = chr(code)
    # repr() handles control chars, quotes, backslashes; strip the outer quotes
    inner = repr(ch)[1:-1]
    return f"; '{inner}' (0x{code:02X})"


# ----- arms simplification -----

def _arms_for(string: str, accept):
    """`accept` takes a char, returns bool. Emit collapsed `((_) X)` when constant."""
    vals = [accept(c) for c in string]
    if len(set(vals)) == 1:
        return f"((_) {'true' if vals[0] else 'false'})"
    return " ".join(
        f"(($ {i}) {'true' if v else 'false'})".replace("$ ", "$")
        for i, v in enumerate(vals)
    )


# ----- global file generators -----

def write_signatures(global_dir: Path, source: str, all_xpreds):
    names_std = [n for n, _, _ in STD_PREDS]
    names_x = sorted(all_xpreds)
    out = []
    out.append(f'(provide Pos {" ".join(names_std + names_x)})')
    out.append('(declare-sort Pos 0)')
    for name, _fn, descr in STD_PREDS:
        out.append(f"; {descr}")
        out.append(f'(declare-fun {name} (Pos) Bool)')
    for xp in names_x:
        out.append(xpred_comment(xp))
        out.append(f'(declare-fun {xp} (Pos) Bool)')
    (global_dir / f"signatures.{source}.sl").write_text("\n".join(out) + "\n")


def write_theories(global_dir: Path, source: str, all_xpreds):
    std_chars = ["char.any", "char.digit", "char.lower", "char.upper",
                 "char.alpha", "char.alnum", "char.word", "char.space", "char.hex"]
    x_chars = [f"char.x{p[4:]}" for p in sorted(all_xpreds)]
    char_ctors = std_chars + x_chars
    provide = ("RegLan RegLan.Asp RegLan.Sem re.opt re.plus re.++ re.union re.inter re.* "
               + " ".join(char_ctors))
    out = []
    out.append(f"(provide {provide})")
    out.append(f'(require "./signatures.{source}.sl")')
    out.append('')
    out.append("(declare-term-types")
    out.append(" ((RegLan 0))")
    out.append(" ((" + " ".join(f"({c})" for c in char_ctors))
    out.append("   (re.opt RegLan)")
    out.append("   (re.plus RegLan)")
    out.append("   (re.++ RegLan RegLan)")
    out.append("   (re.union RegLan RegLan)")
    out.append("   (re.inter RegLan RegLan)")
    out.append("   (re.* RegLan))))")
    out.append('')
    out.append("(define-finite RegLan.Asp")
    out.append("  (record (model Model) (i Int) (j Int))")
    out.append("  :where (and (<= 0 i) (<= i j) (<= j (size (Pos model)))))")
    out.append('')
    out.append("(define-semantics")
    out.append("  ((RegLan.Sem (r RegLan) (asp RegLan.Asp)))")
    out.append("  ((match r")
    for c in char_ctors:
        pred = c.replace("char.", "is.")
        out.append(f"     (({c}) (and (= (j asp) (+ (i asp) 1)) ({pred} (i asp))))")
    out.append("     ((re.opt x)")
    out.append("      (or (= (i asp) (j asp))")
    out.append("          (RegLan.Sem x asp)))")
    out.append("     ((re.plus x)")
    out.append("      (exists ((k (int-range (+ (i asp) 1) (j asp))))")
    out.append("        (and (RegLan.Sem x (RegLan.Asp (model asp) (i asp) k))")
    out.append("             (or (= k (j asp))")
    out.append("                 (RegLan.Sem r (RegLan.Asp (model asp) k (j asp)))))))")
    out.append("     ((re.++ x y)")
    out.append("      (exists ((k (int-range (i asp) (j asp))))")
    out.append("        (and (RegLan.Sem x (RegLan.Asp (model asp) (i asp) k))")
    out.append("             (RegLan.Sem y (RegLan.Asp (model asp) k (j asp))))))")
    out.append("     ((re.union x y)")
    out.append("      (or (RegLan.Sem x asp) (RegLan.Sem y asp)))")
    out.append("     ((re.inter x y)")
    out.append("      (and (RegLan.Sem x asp) (RegLan.Sem y asp)))")
    out.append("     ((re.* x)")
    out.append("      (or (= (i asp) (j asp))")
    out.append("          (exists ((k (int-range (+ (i asp) 1) (j asp))))")
    out.append("            (and (RegLan.Sem x (RegLan.Asp (model asp) (i asp) k))")
    out.append("                 (RegLan.Sem r (RegLan.Asp (model asp) k (j asp))))))))))")
    (global_dir / f"theories.{source}.sl").write_text("\n".join(out) + "\n")


def model_block(name: str, string: str, all_xpreds):
    n = len(string)
    if n == 0:
        return None
    univ = "(" + " ".join(f"${i}" for i in range(n)) + ")"
    out = [f"; {string!r}", f"(define-model {name}", f"  (define-univ Pos {univ})"]
    for pname, predfn, _descr in STD_PREDS:
        out.append(f"  (interp-fun {pname} (match ({_arms_for(string, predfn)})))")
    for xp in sorted(all_xpreds):
        target = chr(int(xp[4:], 16))
        out.append(f"  (interp-fun {xp} (match ({_arms_for(string, lambda c, t=target: c == t)})))")
    return "\n".join(out) + ")\n"


def write_models(global_dir: Path, source: str, sorted_strings, name_of, all_xpreds):
    provide = " ".join(name_of[s] for s in sorted_strings if len(s) > 0)
    out = [f'(require "./signatures.{source}.sl")', f"(provide {provide})", ""]
    for s in sorted_strings:
        if len(s) == 0:
            continue
        blk = model_block(name_of[s], s, all_xpreds)
        if blk:
            out.append(blk)
    (global_dir / f"models.{source}.sl").write_text("\n".join(out))


# ----- per-source flatten -----

def flatten_source(legacy_name: str, upstream_dir: str, offset: int):
    """Returns list[(out_idx, upstream_path, header_lines, body_lines)] ready to write
    after globals are emitted."""
    src_label = legacy_name  # used as filename suffix and provenance
    print(f"\n=== {src_label} (offset {offset}) ===")

    ups = upstream_files(upstream_dir)
    print(f"  upstream files: {len(ups)}")

    # Parse all cases, collect chars/strings
    case_data = []  # (out_idx, upstream_path, pos, neg)
    all_strings = set()
    all_chars = set()
    for i, up in enumerate(ups, start=1):
        pos, neg = parse_upstream(up)
        case_data.append((offset + i, up, pos, neg))
        for s in pos + neg:
            all_strings.add(s)
            for c in s:
                all_chars.add(c)

    all_xpreds = {char_predname(c) for c in all_chars if needs_xpred(c)}
    print(f"  unique strings: {len(all_strings)}, chars: {len(all_chars)}, is.xNN: {len(all_xpreds)}")

    sorted_strings = sorted(all_strings, key=lambda s: (len(s), s))
    name_of = {s: f"w{i + 1:05d}" for i, s in enumerate(sorted_strings)}

    # Write globals
    global_dir = OUT / "global"
    global_dir.mkdir(parents=True, exist_ok=True)
    write_signatures(global_dir, src_label, all_xpreds)
    write_theories(global_dir, src_label, all_xpreds)
    write_models(global_dir, src_label, sorted_strings, name_of, all_xpreds)
    print(f"  wrote global/{{signatures,theories,models}}.{src_label}.sl"
          f"  ({sum(1 for s in sorted_strings if s)} models)")

    # Write per-case instances
    for out_idx, up, pos, neg in case_data:
        gt = _extract_gt(up)
        descr = _extract_natural_language(up)
        source_tag = f"REGEL ({src_label}/{up.name})" + (f" — gt={gt}" if gt else "")
        head = [
            '(set-info :author "Chentian Wu")',
            f'(set-info :source "{_sl_escape(source_tag)}")',
        ]
        if descr:
            head.append(f'(set-info :description "{_sl_escape(descr)}")')
        head.append('')
        body = [
            f'(require "./global/theories.{src_label}.sl")',
            f'(require "./global/models.{src_label}.sl")',
            '',
            '(synth-fun r () RegLan)',
            '',
        ]
        for s in pos:
            if not s:
                continue
            n = name_of[s]
            body.append(f'(constraint      (RegLan.Sem r (RegLan.Asp {n} 0 (size (Pos {n})))))')
        for s in neg:
            if not s:
                continue
            n = name_of[s]
            body.append(f'(constraint (not (RegLan.Sem r (RegLan.Asp {n} 0 (size (Pos {n}))))))')
        body.extend(['', '(check-synth)'])

        (OUT / f"{out_idx:04d}.sl").write_text("\n".join(head + body) + "\n")
        write_sygus(out_idx, up, pos, neg, src_label)
    print(f"  wrote {len(case_data)} instance files (+ sygus/)")

    return case_data


# ----- per-instance sygus (SLIA) emitter -----

# str.to_re takes a literal SLIA string; escape with \uNNNN for chars outside printable ASCII.
def _slia_str(s: str) -> str:
    out = []
    for ch in s:
        o = ord(ch)
        if ch == '"':
            out.append('\\"')
        elif ch == '\\':
            out.append('\\\\')
        elif 0x20 <= o < 0x7F:
            out.append(ch)
        else:
            out.append(f"\\u{{{o:X}}}")
    return "".join(out)


def write_sygus(out_idx: int, upstream: Path, pos: list, neg: list, src_label: str):
    sygus_dir = OUT / "sygus"
    sygus_dir.mkdir(exist_ok=True)

    # de-dup strings while preserving first-seen order; renumber w1..wN
    seen, ordered = {}, []
    for s in pos + neg:
        if s and s not in seen:
            seen[s] = len(ordered) + 1
            ordered.append(s)

    # tight grammar: each char actually used + standard ops + re.allchar (matches delis theory)
    chars_used = sorted({c for s in ordered for c in s})
    grammar_terms = [f'(str.to_re "{_slia_str(c)}")' for c in chars_used] + [
        "re.allchar",
        "(re.opt Start)",
        "(re.++ Start Start)",
        "(re.union Start Start)",
        "(re.inter Start Start)",
        "(re.* Start)",
        "(re.+ Start)",
    ]

    out = ["(set-logic SLIA)", ""]
    out.append(f"; Converted from upstream Regel benchmark {src_label}/{upstream.name}.")
    out.append("; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.")
    out.append("")
    for s in ordered:
        out.append(f'(define-fun w{seen[s]} () String "{_slia_str(s)}")')
    out.append("")
    out.append("(synth-fun r () RegLan")
    out.append("    ((Start RegLan))")
    out.append("    (")
    out.append("        (Start RegLan")
    out.append("            (")
    for t in grammar_terms:
        out.append(f"                {t}")
    out.append("            )")
    out.append("        )")
    out.append("    )")
    out.append(")")
    out.append("")
    for s in pos:
        if not s:
            continue
        out.append(f"(constraint (str.in_re w{seen[s]} r))")
    for s in neg:
        if not s:
            continue
        out.append(f"(constraint (not (str.in_re w{seen[s]} r)))")
    out.append("")
    out.append("(check-synth)")
    (sygus_dir / f"{out_idx:04d}.sl").write_text("\n".join(out) + "\n")


def _extract_gt(path: Path):
    after = False
    for line in path.read_text().splitlines():
        if after:
            t = line.strip()
            if t and not t.startswith("//"):
                return t
        if line.strip().startswith("// gt"):
            after = True
    return None


def _extract_natural_language(path: Path):
    after = False
    for line in path.read_text().splitlines():
        if after:
            t = line.strip()
            if t and not t.startswith("//"):
                return t
        if line.strip().startswith("// natural"):
            after = True
    return None


def _sl_escape(s: str) -> str:
    return s.replace("\\", "\\\\").replace('"', "'")


# ----- txt + sygus migration -----

def copy_txt():
    txt_dir = OUT / "txt"
    txt_dir.mkdir(exist_ok=True)
    total = 0
    for _legacy, upstream_dir, offset in SUITES:
        for i, up in enumerate(upstream_files(upstream_dir), start=1):
            (txt_dir / f"{offset + i:04d}.txt").write_bytes(up.read_bytes())
            total += 1
    print(f"\ntxt/: copied {total} upstream benchmark files")


# ----- main -----

def main():
    # Idempotent: drop existing regel/ to avoid stale files
    if OUT.exists():
        shutil.rmtree(OUT)
    OUT.mkdir(parents=True)

    for legacy, upstream, offset in SUITES:
        flatten_source(legacy, upstream, offset)

    copy_txt()

    # Cleanup old per-source dirs
    removed = []
    for legacy, _upstream, _offset in SUITES:
        d = REGPLUS / legacy
        if d.exists():
            shutil.rmtree(d)
            removed.append(legacy)
    if removed:
        print(f"\nremoved old dirs: {', '.join(removed)}")


if __name__ == "__main__":
    main()
