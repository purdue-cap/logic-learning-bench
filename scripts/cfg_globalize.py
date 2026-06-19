#!/usr/bin/env python3
"""Factor CFG/*.sl into shared global theories (like Reg/global/) and fix the
missing reset-state up-navigation (Krogmeier-Madhusudan 2023, Fig. 7).

Each instance is header + (declare-term-types + Pos/term decls) + models +
(define-aspects + define-semantics) + (synth-fun + constraints). The middle
declarations/aspects/semantics depend only on (K nonterminals, alphabet) — 5
distinct variants across the 74 files. We move that shared block into
global/theory.k{K}.{alpha}.sl, append the per-constructor CFG.Sem propagation
specs (the paper's reset `_` case, which the generated files lacked), and
rewrite each instance to `(require ...)` its theory + keep its own models and
constraints.
"""
from __future__ import annotations

import re
from pathlib import Path

CFG = Path(__file__).resolve().parent.parent / "CFG"
GLOBAL = CFG / "global"


def split(text: str):
    i_types = text.index("(declare-term-types")
    i_model1 = text.index("(define-model")
    i_aspects = text.index("(define-aspects")
    i_synth = text.index("(synth-fun")
    return {
        "header": text[:i_types].rstrip() + "\n",
        "types_decls": text[i_types:i_model1].strip() + "\n",
        "models": text[i_model1:i_aspects].strip() + "\n",
        "aspects_sem": text[i_aspects:i_synth].strip() + "\n",
        "tail": text[i_synth:].strip() + "\n",
    }


def variant(types_decls: str):
    """(K, alphabet-tuple) parsed from the term-types datatype."""
    # Rhs group is the 2nd constructor group; terminals are single-letter ctors.
    terminals = sorted(set(re.findall(r"\(([a-z])\)", types_decls)))
    ks = sorted(set(int(m) for m in re.findall(r"cfg\.rhs\.S(\d+)", types_decls)))
    K = len(ks)
    assert ks == list(range(K)), f"non-contiguous nonterminals: {ks}"
    return K, tuple(terminals)


def propagation(K: int, terminals: tuple[str, ...]) -> str:
    if K == 1:
        disj = "(= (mode asp) reset.S0)"
    else:
        disj = "(or " + " ".join(f"(= (mode asp) reset.S{i})" for i in range(K)) + ")"
    body = f"(and {disj} (CFG.Sem (parent n) asp))"
    rhs_pats = [f"({t})" for t in terminals] + ["(cfg.++ x y)"] + [f"(cfg.rhs.S{i})" for i in range(K)]
    rules_pats = [f"(cfg.lhs.S{i} x y)" for i in range(K)] + ["(end)"]
    out = (
        ";; Reset-state up-navigation (Krogmeier-Madhusudan 2023, Fig. 7). In the\n"
        ";; reset(z) state every symbol except top(z)=cfg.top.S0 navigates up one\n"
        ";; level (the paper's `_` case), listed explicitly per constructor.\n"
        "(define-semantics\n  ((CFG.Sem (n Rhs) (asp CFG.Asp)))\n  ((match n\n"
    )
    for p in rhs_pats:
        out += f"     ({p} {body})\n"
    out = out.rstrip() + ")))\n\n"
    out += "(define-semantics\n  ((CFG.Sem (n Rules) (asp CFG.Asp)))\n  ((match n\n"
    for p in rules_pats:
        out += f"     ({p} {body})\n"
    out = out.rstrip() + ")))\n"
    return out


def theory_name(K: int, terminals: tuple[str, ...]) -> str:
    return f"theory.k{K}.{''.join(terminals)}.sl"


def main():
    GLOBAL.mkdir(exist_ok=True)
    # 0001.sl / 0001_tiny.sl are include_str!'d by the Rust tests with no base
    # path for require resolution, so keep them self-contained (already fixed).
    skip = {"0001.sl", "0001_tiny.sl"}
    files = [f for f in sorted(CFG.glob("[0-9]*.sl")) if f.name not in skip]
    theories: dict[str, str] = {}
    counts: dict[str, int] = {}

    for f in files:
        s = split(f.read_text())
        K, terminals = variant(s["types_decls"])
        name = theory_name(K, terminals)
        counts[name] = counts.get(name, 0) + 1

        if name not in theories:
            provide = "(provide CFG Rhs Rules Pos " + " ".join(terminals) + \
                      " CFG.Asp CFG.Sem Rhs.Sem Rules.Sem)\n\n"
            theories[name] = (
                f";; Shared CFG theory: K={K} nonterminals, alphabet {{{','.join(terminals)}}}.\n"
                f";; Used by the CFG/*.sl instances that (require) it.\n\n"
                + provide
                + s["types_decls"] + "\n"
                + s["aspects_sem"] + "\n"
                + propagation(K, terminals)
            )

        instance = (
            s["header"].rstrip() + "\n\n"
            + f'(require "./global/{name}")\n\n'
            + s["models"].rstrip() + "\n\n"
            + s["tail"].rstrip() + "\n"
        )
        f.write_text(instance)

    for name, body in theories.items():
        (GLOBAL / name).write_text(body)

    print(f"{len(files)} instances rewritten; {len(theories)} theories:")
    for name in sorted(counts):
        print(f"  {name}: {counts[name]} files")


if __name__ == "__main__":
    main()
