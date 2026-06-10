#!/usr/bin/env python3
"""Flatten binary-alphabet Reg suites (alpharegex/tomita/sipser).

Replace per-suite theories/, signatures/, models/ trees with one global/ subdir
holding three files. Dedupe model definitions: p<str> and n<str> have identical
content (the string itself), so merge into a single w<str> entry. The
positive/negative distinction moves entirely into the per-case (constraint ...)
lines.
"""
import re
import shutil
from pathlib import Path

ROOT = Path("/Users/chentian/Codes/Rust/delis/benchmark/Reg")
SUITES = ["alpharegex", "tomita", "sipser"]

def canonical(name):
    """p0 -> w0, n01 -> w01, peps -> weps, wX -> wX."""
    if name.startswith("p") or name.startswith("n"):
        return "w" + name[1:]
    return name


def _matched_paren_end(s, open_pos):
    """Given s[open_pos] == '(', return idx of matching ')' (inclusive)."""
    depth = 0
    i = open_pos
    while i < len(s):
        if s[i] == "(":
            depth += 1
        elif s[i] == ")":
            depth -= 1
            if depth == 0:
                return i
        i += 1
    raise ValueError("unmatched paren")


def parse_models(model_dir):
    """Returns {canonical_name: full_define_model_block_str}."""
    out = {}
    for f in sorted(model_dir.glob("*.sl")):
        txt = f.read_text()
        i = 0
        while True:
            j = txt.find("(define-model", i)
            if j < 0:
                break
            end = _matched_paren_end(txt, j)
            block = txt[j:end+1]
            # extract name
            m = re.match(r"\(define-model\s+(\S+)", block)
            if not m:
                i = end + 1
                continue
            name = m.group(1)
            cname = canonical(name)
            # rewrite block to use canonical name
            canonical_block = re.sub(r"\(define-model\s+\S+", f"(define-model {cname}", block, count=1)
            if cname in out:
                if out[cname] != canonical_block:
                    print(f"  ! conflict on {cname} in {f.name}")
            else:
                out[cname] = canonical_block
            i = end + 1
    return out


def write_global_models(global_dir, models):
    names = sorted(models.keys(), key=lambda n: (len(n), n))
    lines = ['(require "./signatures.sl")']
    lines.append(f'(provide {" ".join(names)})')
    lines.append('')
    for n in names:
        lines.append(models[n])
        lines.append('')
    (global_dir / "models.sl").write_text("\n".join(lines))


def fix_signatures(global_dir):
    """Make signatures.sl self-contained — no require to itself, no provides of itself."""
    src = global_dir.parent / "signatures" / "main.sl"
    if not src.exists():
        return
    txt = src.read_text()
    (global_dir / "signatures.sl").write_text(txt)


def fix_theories(global_dir):
    """Theory needs to require signatures.sl (not ../signatures/main.sl)."""
    src = global_dir.parent / "theories" / "main.sl"
    if not src.exists():
        return
    txt = src.read_text()
    # rewrite require
    txt = re.sub(r'\(require\s+"\.\./signatures/[^"]+"\)',
                 '(require "./signatures.sl")', txt)
    (global_dir / "theories.sl").write_text(txt)


def rewrite_case(case_file):
    """Rewrite a per-case .sl: update require paths, rename p<str>/n<str> -> w<str>."""
    txt = case_file.read_text()
    # rewrite require paths (idempotent — handles both pre-flatten and post)
    txt = re.sub(r'\(require\s+"\./theories/main\.sl"\)',
                 '(require "./global/theories.sl")', txt)
    txt = re.sub(r'\(require\s+"models/[^"]+\.sl"\)',
                 '(require "./global/models.sl")', txt)
    # Rewrite both (RegLan.Asp pXXX ...) and (Pos pXXX) etc.
    # Names may contain {0,1,_,?,X} chars (alpharegex enriched alphabet).
    def rep(m):
        ctor = m.group(1)
        rest = m.group(3)
        return f'({ctor} w{rest}'
    txt = re.sub(r'\((RegLan.Asp|Pos)\s+([pn])([0-9_\?X]+)(?=\s|\))',
                 rep, txt)
    case_file.write_text(txt)


def build_model_block(name, string):
    """For binary alphabet {0,1} (plus enriched alphabet for alpharegex):
    build a (define-model w<string> ...) block.

    Characters:
      - '0' → zero(i)=true,  one(i)=false
      - '1' → zero(i)=false, one(i)=true
      - '_', '?', 'X' → zero(i)=true, one(i)=true (any-char position)
    """
    n = len(string)
    if n == 0:
        return None
    univ = "(" + " ".join(f"${i}" for i in range(n)) + ")"
    def bit(c, target):
        # target is "0" or "1"; returns string "true" or "false"
        if c == target:
            return "true"
        if c in ("_", "?", "X"):
            return "true"  # any-char position
        return "false"
    zero_arms = " ".join(f"(($ {i}) {bit(c, '0')})".replace("$ ", "$") for i, c in enumerate(string))
    one_arms  = " ".join(f"(($ {i}) {bit(c, '1')})".replace("$ ", "$") for i, c in enumerate(string))
    return (
        f"(define-model {name}\n"
        f"  (interp-sort Pos {univ})\n"
        f"  (interp-fun zero (match ({zero_arms})))\n"
        f"  (interp-fun one (match ({one_arms}))))"
    )


def collect_references(suite):
    """Walk all per-case .sl files, return set of model names referenced.
    Names may end in non-word chars like `?` (alpharegex enriched alphabet),
    so use a non-greedy match terminated by whitespace or closing paren."""
    names = set()
    for c in sorted(suite.glob("0*.sl")):
        txt = c.read_text()
        for m in re.finditer(r'\(RegLan\.Asp\s+(\S+?)(?=\s|\))', txt):
            names.add(m.group(1))
    return names


def flatten(suite_name):
    suite = ROOT / suite_name
    print(f"\n=== {suite} ===")
    global_dir = suite / "global"
    global_dir.mkdir(exist_ok=True)
    # 1. Collect referenced model names from per-case .sl (already rewritten to w<str> form)
    refs = collect_references(suite)
    print(f"  {len(refs)} unique model names referenced")
    # 2. Build model blocks from name (name w<string> encodes the string directly)
    models = {}
    for nm in sorted(refs, key=lambda n: (len(n), n)):
        if not nm.startswith("w"):
            print(f"  ! unexpected model name: {nm}")
            continue
        string = nm[1:]  # strip "w" prefix
        blk = build_model_block(nm, string)
        if blk:
            models[nm] = blk
    write_global_models(global_dir, models)
    print(f"  wrote {len(models)} models to global/models.sl")
    # 3. theory + signature already copied (no-op on rerun)
    if not (global_dir / "theories.sl").exists():
        fix_signatures(global_dir)
        fix_theories(global_dir)
    # 4. Rewrite per-case .sl (idempotent: handles both pre-flatten and post)
    cases = sorted(suite.glob("0*.sl"))
    for c in cases:
        rewrite_case(c)
    # 5. Cleanup old dirs (no-op on rerun)
    for old in ("models", "theories", "signatures"):
        p = suite / old
        if p.exists():
            shutil.rmtree(p)


def main():
    for s in SUITES:
        flatten(s)


if __name__ == "__main__":
    main()
