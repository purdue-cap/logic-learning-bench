#!/usr/bin/env python3
"""Carefully rebuild alpharegex/ into the flat noNNNN.sl + global/ layout.

Input: git-restored originals in Reg/alpharegex/{no01..no25}.sl, no14-noaxiom.sl,
       models/, theories/main.sl, signatures/main.sl.
Output:
  - Reg/alpharegex/0001.sl .. 0025.sl (renumbered, set-info added, require paths
    updated, p/n prefixes merged to single w prefix in model refs)
  - Reg/alpharegex/global/{models,signatures,theories}.sl
  - Drop no14-noaxiom.sl entirely.
  - Original models/p... and n... definitions deduped — they share identical
    bodies after rename to w-prefix, so each unique string keeps one model.

This script PRESERVES the original constraint structure verbatim — it only
restructures filenames and merges identical model definitions. No semantic
interpretation, no string-to-predicate guesswork.
"""
import re
import shutil
from pathlib import Path

ALPHA = Path("/Users/chentian/Codes/Rust/delis/benchmark/Reg/alpharegex")
KUPL = Path("/Users/chentian/Codes/OCaml/AlphaRegexPublic/benchmarks")

# Map noN -> kupl filename (for set-info source) by reading kupl dir
KUPL_NAMES = {}
for f in KUPL.iterdir():
    m = re.match(r"no(\d+)_", f.name)
    if m:
        KUPL_NAMES[int(m.group(1))] = f.name

def kupl_desc(no):
    if no not in KUPL_NAMES:
        return ("", "")
    f = KUPL / KUPL_NAMES[no]
    desc_lines = []
    for ln in f.read_text().splitlines():
        s = ln.strip()
        if s == "++" or s == "--":
            break
        if s:
            desc_lines.append(s)
    return (KUPL_NAMES[no], " ".join(desc_lines))


def matched_end(s, j):
    depth = 0
    while j < len(s):
        if s[j] == "(": depth += 1
        elif s[j] == ")":
            depth -= 1
            if depth == 0: return j
        j += 1
    return -1


def parse_models(model_file):
    """Yields (orig_name, full_block) per (define-model ...) in the file."""
    txt = model_file.read_text()
    i = 0
    while True:
        j = txt.find("(define-model", i)
        if j < 0: return
        e = matched_end(txt, j)
        block = txt[j:e+1]
        m = re.match(r"\(define-model\s+(\S+)", block)
        if m:
            yield m.group(1), block
        i = e + 1


def to_w(name):
    """p0 -> w0, n01 -> w01, etc."""
    if name.startswith("p") or name.startswith("n"):
        return "w" + name[1:]
    return name


# ----- Step 1: build global/models.sl -----

GLOBAL = ALPHA / "global"
GLOBAL.mkdir(exist_ok=True)

all_models = {}  # w_name -> block_string
for f in sorted((ALPHA / "models").glob("*.sl")):
    for orig, block in parse_models(f):
        cname = to_w(orig)
        # Rewrite the block's first (define-model NAME ...) to use new name
        new_block = re.sub(r"\(define-model\s+\S+", f"(define-model {cname}", block, count=1)
        if cname in all_models and all_models[cname] != new_block:
            print(f"  WARN: conflicting definition for {cname} in {f.name}")
        all_models[cname] = new_block

names = sorted(all_models.keys(), key=lambda n: (len(n), n))
mlines = ['(require "./signatures.sl")',
          f'(provide {" ".join(names)})',
          '']
for n in names:
    mlines.append(all_models[n])
    mlines.append('')
(GLOBAL / "models.sl").write_text("\n".join(mlines))
print(f"global/models.sl: {len(names)} unique models")

# ----- Step 2: build global/signatures.sl -----

sig_src = (ALPHA / "signatures" / "main.sl").read_text()
(GLOBAL / "signatures.sl").write_text(sig_src)
print("global/signatures.sl: copied from signatures/main.sl")

# ----- Step 3: build global/theories.sl -----

th_src = (ALPHA / "theories" / "main.sl").read_text()
# Rewrite require path; rename ReAsp -> RegLan.Asp for consistency with RegLan.Sem
th_src = re.sub(r'\(require\s+"\.\./signatures/[^"]+"\)',
                '(require "./signatures.sl")', th_src)
th_src = re.sub(r'\bReAsp\b', 'RegLan.Asp', th_src)
(GLOBAL / "theories.sl").write_text(th_src)
print("global/theories.sl: copied + ReAsp->RegLan.Asp")

# ----- Step 4: rewrite each noN.sl -> 000N.sl -----

# collect the 25 noN.sl files in numeric order; drop no14-noaxiom
case_files = []
for f in sorted(ALPHA.glob("no*.sl")):
    if f.stem == "no14-noaxiom":
        continue
    m = re.match(r"no(\d+)$", f.stem)
    if not m:
        continue
    case_files.append((int(m.group(1)), f))
case_files.sort()

assert len(case_files) == 25, f"expected 25 cases, got {len(case_files)}"

for idx, (no, src) in enumerate(case_files, start=1):
    src_name, desc = kupl_desc(no)
    safe_desc = desc.replace('"', "'")
    txt = src.read_text()
    # Rewrite require paths
    txt = re.sub(r'\(require\s+"\./theories/main[^"]*\.sl"\)',
                 '(require "./global/theories.sl")', txt)
    txt = re.sub(r'\(require\s+"models/[^"]+\.sl"\)',
                 '(require "./global/models.sl")', txt)
    # Rename ReAsp -> RegLan.Asp
    txt = re.sub(r'\bReAsp\b', 'RegLan.Asp', txt)
    # Rename p<...> / n<...> model refs to w<...>
    def rename_ref(m):
        ctor = m.group(1)
        nm = m.group(2)
        rest = nm[1:]
        return f"({ctor} w{rest}"
    txt = re.sub(r'\((RegLan\.Asp|Pos)\s+([pn][0-9_?X]+)', rename_ref, txt)
    # Add set-info header
    header = (
        '(set-info :author "Chentian Wu")\n'
        f'(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — {src_name}")\n'
        f'(set-info :description "{safe_desc}")\n'
        '\n'
    )
    new = header + txt
    out = ALPHA / f"{idx:04d}.sl"
    out.write_text(new)
    src.unlink()
    print(f"  0{idx:03d}.sl  ← {src.name}")

# ----- Step 5: drop no14-noaxiom + old subdirs -----

noaxiom = ALPHA / "no14-noaxiom.sl"
if noaxiom.exists():
    noaxiom.unlink()
    print("dropped no14-noaxiom.sl")

for sub in ("models", "theories", "signatures"):
    p = ALPHA / sub
    if p.exists():
        shutil.rmtree(p)
print("removed old models/, theories/, signatures/")
