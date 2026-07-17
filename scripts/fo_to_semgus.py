#!/usr/bin/env python3
"""Generate SemGuS FO separator benchmarks from benchmark/FO/*.fol.

The generated files keep the same FO2 term universe as fol2sl.py, but replace
Delis models/aspects/univ with explicit SemGuS inputs:

  n*     domain sizes for finite sorts
  c*     interpreted constants as Int ids
  f*_*   interpreted function tables as Int ids
  r*_*   interpreted relation tables as Bool values

Finite-domain elements are represented by Int ids 0..nS-1, with one id space
per sort. Quantifiers are unrolled up to the maximum domain size seen in the
instance's frozen model set.
"""

from __future__ import annotations

import argparse
import importlib.util
import re
from dataclasses import dataclass
from itertools import product
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
FO = ROOT / "FO"
DEFAULT_OUT = FO / "semgus"


def load_fol2sl() -> Any:
    path = Path(__file__).resolve().with_name("fol2sl.py")
    spec = importlib.util.spec_from_file_location("fol2sl", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"failed to load {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


fol2sl = load_fol2sl()


def atom_and(parts: list[str]) -> str:
    parts = [part for part in parts if part and part != "true"]
    if not parts:
        return "true"
    if "false" in parts:
        return "false"
    if len(parts) == 1:
        return parts[0]
    return f"(and {' '.join(parts)})"


def atom_or(parts: list[str]) -> str:
    parts = [part for part in parts if part and part != "false"]
    if not parts:
        return "false"
    if "true" in parts:
        return "true"
    if len(parts) == 1:
        return parts[0]
    return f"(or {' '.join(parts)})"


def eq(lhs: str, rhs: str | int) -> str:
    return f"(= {lhs} {rhs})"


def typed(names: list[str], sort: str) -> str:
    return " ".join(f"({name} {sort})" for name in names)


def ctor(name: str, args: list[str]) -> str:
    if args:
        return f"({name} {' '.join(args)})"
    return f"({name})"


def product_indices(max_sizes: dict[str, int], sorts: list[str]) -> list[tuple[int, ...]]:
    if not sorts:
        return [()]
    ranges = [range(max_sizes[sort]) for sort in sorts]
    return list(product(*ranges))


def flat_index(indices: tuple[int, ...], max_sizes: dict[str, int], sorts: list[str]) -> int:
    out = 0
    for index, sort in zip(indices, sorts):
        out = out * max_sizes[sort] + index
    return out


@dataclass(frozen=True)
class Layout:
    sig: Any
    models: list[Any]
    constraints: list[tuple[str, bool]]
    max_sizes: dict[str, int]
    contexts: list[Any]
    terms_by_ctx: dict[str, dict[str, list[tuple[str, list[str], tuple[str, str] | tuple[()]]]]]
    const_names: list[str]
    fun_names: list[str]
    rel_names: list[str]
    model_inputs: list[tuple[str, str]]
    const_var: dict[str, str]
    fun_entries: dict[str, list[tuple[tuple[int, ...], str]]]
    rel_entries: dict[str, list[tuple[tuple[int, ...], str]]]

    @property
    def model_input_names(self) -> list[str]:
        return [name for name, _ in self.model_inputs]

    @property
    def typed_model_inputs(self) -> str:
        return " ".join(f"({name} {sort})" for name, sort in self.model_inputs)

    def sort_size_var(self, sort: str) -> str:
        return f"n{self.sig.sorts.index(sort)}"


def build_layout(sig: Any, models: list[Any], constraints: list[tuple[str, bool]]) -> Layout:
    max_sizes: dict[str, int] = {}
    for sort in sig.sorts:
        sizes = [len(model.univs.get(sort, [])) for model in models]
        if not sizes or max(sizes) == 0:
            raise RuntimeError(f"sort {sort} has empty universe in all models")
        max_sizes[sort] = max(sizes)

    contexts = fol2sl.contexts(sig.sorts)
    terms_by_ctx = {
        ctx.key: fol2sl.term_constructors(sig, ctx)
        for ctx in contexts
    }

    const_names = sorted(sig.constants)
    fun_names = sorted(sig.functions)
    rel_names = list(sig.relations)

    model_inputs: list[tuple[str, str]] = []
    for i, _sort in enumerate(sig.sorts):
        model_inputs.append((f"n{i}", "Int"))

    const_var: dict[str, str] = {}
    for i, const in enumerate(const_names):
        name = f"c{i}"
        const_var[const] = name
        model_inputs.append((name, "Int"))

    fun_entries: dict[str, list[tuple[tuple[int, ...], str]]] = {}
    for i, fun in enumerate(fun_names):
        arg_sorts, _ret_sort = sig.functions[fun]
        entries: list[tuple[tuple[int, ...], str]] = []
        for indices in product_indices(max_sizes, arg_sorts):
            name = f"f{i}_{flat_index(indices, max_sizes, arg_sorts)}"
            entries.append((indices, name))
            model_inputs.append((name, "Int"))
        fun_entries[fun] = entries

    rel_entries: dict[str, list[tuple[tuple[int, ...], str]]] = {}
    for i, rel in enumerate(rel_names):
        arg_sorts = sig.relations[rel]
        entries = []
        for indices in product_indices(max_sizes, arg_sorts):
            name = f"r{i}_{flat_index(indices, max_sizes, arg_sorts)}"
            entries.append((indices, name))
            model_inputs.append((name, "Bool"))
        rel_entries[rel] = entries

    return Layout(
        sig=sig,
        models=models,
        constraints=constraints,
        max_sizes=max_sizes,
        contexts=contexts,
        terms_by_ctx=terms_by_ctx,
        const_names=const_names,
        fun_names=fun_names,
        rel_names=rel_names,
        model_inputs=model_inputs,
        const_var=const_var,
        fun_entries=fun_entries,
        rel_entries=rel_entries,
    )


def env_decls(ctx: Any) -> str:
    return " ".join(f"({var} Int)" for var, _sort in ctx.bindings)


def env_input_names(ctx: Any) -> list[str]:
    return [var for var, _sort in ctx.bindings]


def env_args(ctx: Any, overrides: dict[str, str] | None = None) -> list[str]:
    overrides = overrides or {}
    return [overrides.get(var, var) for var, _sort in ctx.bindings]


def formula_call(layout: Layout, ctx: Any, term: str, result: str, overrides: dict[str, str] | None = None) -> str:
    args = [term, *layout.model_input_names, *env_args(ctx, overrides), result]
    return f"({ctx.sem} {' '.join(args)})"


def term_call(layout: Layout, ctx: Any, sort: str, term: str, value: str, overrides: dict[str, str] | None = None) -> str:
    args = [term, *layout.model_input_names, *env_args(ctx, overrides), value]
    return f"({fol2sl.term_sem(ctx, sort)} {' '.join(args)})"


def tuple_cond(arg_values: list[str], indices: tuple[int, ...]) -> str:
    return atom_and([eq(arg, index) for arg, index in zip(arg_values, indices)])


def mux(entries: list[tuple[tuple[int, ...], str]], arg_values: list[str], default: str) -> str:
    if not entries:
        return default
    if not arg_values and len(entries) == 1:
        return entries[0][1]
    expr = default
    for indices, value in reversed(entries):
        expr = f"(ite {tuple_cond(arg_values, indices)} {value} {expr})"
    return expr


def function_lookup(layout: Layout, fun: str, arg_values: list[str]) -> str:
    return mux(layout.fun_entries[fun], arg_values, "0")


def relation_lookup(layout: Layout, rel: str, arg_values: list[str]) -> str:
    return mux(layout.rel_entries[rel], arg_values, "false")


def declare_term_types(layout: Layout) -> str:
    formula_sorts = [ctx.formula for ctx in layout.contexts]
    term_sorts = [
        fol2sl.term_sort(ctx, sort)
        for ctx in layout.contexts
        for sort, ctors in layout.terms_by_ctx[ctx.key].items()
        if ctors
    ]
    term_types = ["Start", *formula_sorts, *term_sorts]

    groups: list[list[tuple[str, list[str]]]] = [[("$eval", ["FO0"])]]
    for ctx in layout.contexts:
        group: list[tuple[str, list[str]]] = [
            (f"fol.{ctx.ctor_key}.true", []),
            (f"fol.{ctx.ctor_key}.false", []),
            (f"fol.{ctx.ctor_key}.not", [ctx.formula]),
            (f"fol.{ctx.ctor_key}.and", [ctx.formula, ctx.formula]),
            (f"fol.{ctx.ctor_key}.or", [ctx.formula, ctx.formula]),
        ]
        for var in ("x0", "x1"):
            for sort in layout.sig.sorts:
                target = ctx.quantified(var, sort)
                group.append((f"fol.{ctx.ctor_key}.forall.{var}.{sort}", [target.formula]))
                group.append((f"fol.{ctx.ctor_key}.exists.{var}.{sort}", [target.formula]))
        for sort in layout.sig.sorts:
            if layout.terms_by_ctx[ctx.key].get(sort):
                group.append((f"fol.{ctx.ctor_key}.eq.{sort}", [fol2sl.term_sort(ctx, sort), fol2sl.term_sort(ctx, sort)]))
        for rel, args in layout.sig.relations.items():
            if all(layout.terms_by_ctx[ctx.key].get(sort) for sort in args):
                group.append((f"fol.{ctx.ctor_key}.atom.{rel}", [fol2sl.term_sort(ctx, sort) for sort in args]))
        groups.append(group)

    for ctx in layout.contexts:
        for _sort, ctors in layout.terms_by_ctx[ctx.key].items():
            if ctors:
                groups.append([(name, args) for name, args, _ in ctors])

    lines = ["(declare-term-types"]
    lines.append("  (" + " ".join(f"({name} 0)" for name in term_types) + ")")
    lines.append("  (")
    for group in groups:
        lines.append("    (")
        for name, args in group:
            lines.append(f"      {ctor(name, args)}")
        lines.append("    )")
    lines.append("  )")
    lines.append(")")
    return "\n".join(lines)


def relation_sigs(layout: Layout) -> list[str]:
    sigs = [
        f"(Start.Sem ((t Start) {layout.typed_model_inputs} (result Bool)) Bool)"
    ]
    for ctx in layout.contexts:
        env = env_decls(ctx)
        args = " ".join(part for part in [f"(t {ctx.formula})", layout.typed_model_inputs, env, "(result Bool)"] if part)
        sigs.append(f"({ctx.sem} ({args}) Bool)")
    for ctx in layout.contexts:
        for sort, ctors in layout.terms_by_ctx[ctx.key].items():
            if not ctors:
                continue
            env = env_decls(ctx)
            args = " ".join(part for part in [f"(t {fol2sl.term_sort(ctx, sort)})", layout.typed_model_inputs, env, "(value Int)"] if part)
            sigs.append(f"({fol2sl.term_sem(ctx, sort)} ({args}) Bool)")
    return sigs


def start_sem(layout: Layout) -> str:
    body = atom_and([
        formula_call(layout, layout.contexts[0], "phi", "R"),
        eq("result", "R"),
    ])
    input_vars = " ".join(layout.model_input_names)
    return f"""(! (match t (
      (($eval phi)
        (exists ((R Bool)) {body})
      )
    )) :input ({input_vars}) :output (result))"""


def quantifier_case(layout: Layout, ctx: Any, quant: str, var: str, sort: str) -> str:
    target = ctx.quantified(var, sort)
    k = layout.max_sizes[sort]
    declarations: list[str] = []
    assigns: list[str] = []
    calls: list[str] = []
    result_terms: list[str] = []
    size_var = layout.sort_size_var(sort)

    for i in range(k):
        v_name = f"V_{var}_{i}"
        p_name = f"P_{var}_{i}"
        declarations.append(f"({v_name} Int)")
        declarations.append(f"({p_name} Bool)")
        assigns.append(eq(v_name, i))
        overrides = {var: v_name}
        calls.append(formula_call(layout, target, "p", p_name, overrides))
        in_domain = f"(< {v_name} {size_var})"
        if quant == "forall":
            result_terms.append(atom_or([f"(not {in_domain})", p_name]))
        else:
            result_terms.append(atom_and([in_domain, p_name]))

    rhs = atom_and(result_terms) if quant == "forall" else atom_or(result_terms)
    body = atom_and([*assigns, *calls, eq("result", rhs)])
    if declarations:
        return f"""      ((fol.{ctx.ctor_key}.{quant}.{var}.{sort} p)
        (exists ({' '.join(declarations)}) {body})
      )"""
    return f"""      ((fol.{ctx.ctor_key}.{quant}.{var}.{sort} p)
        {eq("result", rhs)}
      )"""


def formula_cases(layout: Layout, ctx: Any) -> list[str]:
    cases = [
        f"""      ((fol.{ctx.ctor_key}.true)
        (= result true)
      )""",
        f"""      ((fol.{ctx.ctor_key}.false)
        (= result false)
      )""",
        f"""      ((fol.{ctx.ctor_key}.not p)
        (exists ((P Bool)) {atom_and([formula_call(layout, ctx, "p", "P"), eq("result", "(not P)")])})
      )""",
        f"""      ((fol.{ctx.ctor_key}.and p q)
        (exists ((P Bool) (Q Bool)) {atom_and([formula_call(layout, ctx, "p", "P"), formula_call(layout, ctx, "q", "Q"), eq("result", "(and P Q)")])})
      )""",
        f"""      ((fol.{ctx.ctor_key}.or p q)
        (exists ((P Bool) (Q Bool)) {atom_and([formula_call(layout, ctx, "p", "P"), formula_call(layout, ctx, "q", "Q"), eq("result", "(or P Q)")])})
      )""",
    ]

    for var in ("x0", "x1"):
        for sort in layout.sig.sorts:
            cases.append(quantifier_case(layout, ctx, "forall", var, sort))
            cases.append(quantifier_case(layout, ctx, "exists", var, sort))

    for sort in layout.sig.sorts:
        if not layout.terms_by_ctx[ctx.key].get(sort):
            continue
        body = atom_and([
            term_call(layout, ctx, sort, "lhs", "L"),
            term_call(layout, ctx, sort, "rhs", "R"),
            eq("result", "(= L R)"),
        ])
        cases.append(f"""      ((fol.{ctx.ctor_key}.eq.{sort} lhs rhs)
        (exists ((L Int) (R Int)) {body})
      )""")

    for rel, arg_sorts in layout.sig.relations.items():
        if not all(layout.terms_by_ctx[ctx.key].get(sort) for sort in arg_sorts):
            continue
        arg_names = [f"a{i}" for i in range(len(arg_sorts))]
        value_names = [f"A{i}" for i in range(len(arg_sorts))]
        declarations = [f"({name} Int)" for name in value_names]
        calls = [
            term_call(layout, ctx, sort, arg, value)
            for sort, arg, value in zip(arg_sorts, arg_names, value_names)
        ]
        body = atom_and([*calls, eq("result", relation_lookup(layout, rel, value_names))])
        pattern = f"(fol.{ctx.ctor_key}.atom.{rel}{(' ' + ' '.join(arg_names)) if arg_names else ''})"
        if declarations:
            cases.append(f"""      ({pattern}
        (exists ({' '.join(declarations)}) {body})
      )""")
        else:
            cases.append(f"""      ({pattern}
        {body}
      )""")
    return cases


def formula_sem(layout: Layout, ctx: Any) -> str:
    cases = "\n".join(formula_cases(layout, ctx))
    input_vars = " ".join([*layout.model_input_names, *env_input_names(ctx)])
    return f"""(! (match t (
{cases}
    )) :input ({input_vars}) :output (result))"""


def term_case(layout: Layout, ctx: Any, name: str, args: list[str], var_info: tuple[str, str] | tuple[()]) -> str:
    arg_names = [f"a{i}" for i in range(len(args))]
    pattern = f"({name}{(' ' + ' '.join(arg_names)) if arg_names else ''})"

    if var_info:
        return f"""      ({pattern}
        (= value {var_info[0]})
      )"""

    sym = name.rsplit(".term.", 1)[1]
    if sym in layout.sig.constants:
        return f"""      ({pattern}
        (= value {layout.const_var[sym]})
      )"""

    arg_sorts, _ret_sort = layout.sig.functions[sym]
    value_names = [f"A{i}" for i in range(len(arg_sorts))]
    declarations = [f"({name} Int)" for name in value_names]
    calls = [
        term_call(layout, ctx, sort, arg, value)
        for sort, arg, value in zip(arg_sorts, arg_names, value_names)
    ]
    body = atom_and([*calls, eq("value", function_lookup(layout, sym, value_names))])
    if declarations:
        return f"""      ({pattern}
        (exists ({' '.join(declarations)}) {body})
      )"""
    return f"""      ({pattern}
        {body}
      )"""


def term_sem(layout: Layout, ctx: Any, sort: str, ctors: list[tuple[str, list[str], tuple[str, str] | tuple[()]]]) -> str:
    cases = "\n".join(
        term_case(layout, ctx, name, args, var_info)
        for name, args, var_info in ctors
    )
    input_vars = " ".join([*layout.model_input_names, *env_input_names(ctx)])
    return f"""(! (match t (
{cases}
    )) :input ({input_vars}) :output (value))"""


def semantics(layout: Layout) -> str:
    sigs = "\n    ".join(relation_sigs(layout))
    bodies = [start_sem(layout)]
    bodies.extend(formula_sem(layout, ctx) for ctx in layout.contexts)
    for ctx in layout.contexts:
        for sort, ctors in layout.terms_by_ctx[ctx.key].items():
            if ctors:
                bodies.append(term_sem(layout, ctx, sort, ctors))
    body_text = "\n    ".join(bodies)
    return f"""(define-funs-rec
  (
    {sigs}
  )
  (
    {body_text}
  )
)"""


def elem_index(model: Any, sort: str, elem: str) -> int:
    try:
        return model.univs[sort].index(elem)
    except (KeyError, ValueError) as exc:
        raise RuntimeError(f"model {model.name}: {elem} is not in universe {sort}") from exc


def model_args(layout: Layout, model: Any) -> list[str]:
    args: list[str] = []
    for sort in layout.sig.sorts:
        args.append(str(len(model.univs.get(sort, []))))

    for const in layout.const_names:
        sort = layout.sig.constants[const]
        elem = model.const_vals.get(const, fol2sl.default_value(model, sort))
        args.append(str(elem_index(model, sort, elem)))

    for fun in layout.fun_names:
        arg_sorts, ret_sort = layout.sig.functions[fun]
        values = model.fun_vals.get(fun, {})
        default = fol2sl.default_value(model, ret_sort)
        for indices, _var in layout.fun_entries[fun]:
            if all(index < len(model.univs.get(sort, [])) for index, sort in zip(indices, arg_sorts)):
                elem_args = tuple(model.univs[sort][index] for index, sort in zip(indices, arg_sorts))
                elem = values.get(elem_args, default)
            else:
                elem = default
            args.append(str(elem_index(model, ret_sort, elem)))

    for rel in layout.rel_names:
        arg_sorts = layout.sig.relations[rel]
        true_tuples = model.rel_true.get(rel, set())
        for indices, _var in layout.rel_entries[rel]:
            if all(index < len(model.univs.get(sort, [])) for index, sort in zip(indices, arg_sorts)):
                elem_args = tuple(model.univs[sort][index] for index, sort in zip(indices, arg_sorts))
                args.append("true" if elem_args in true_tuples else "false")
            else:
                args.append("false")
    return args


def constraint_lines(layout: Layout) -> list[str]:
    by_name = {model.name: model for model in layout.models}
    lines: list[str] = []
    for name, expected in layout.constraints:
        if name not in by_name:
            raise RuntimeError(f"constraint references unknown model {name}")
        result = "true" if expected else "false"
        args = " ".join([*model_args(layout, by_name[name]), result])
        lines.append(f"(constraint (Start.Sem phi {args}))")
    return lines


def max_domain_comment(layout: Layout) -> str:
    return ", ".join(f"{sort}={layout.max_sizes[sort]}" for sort in layout.sig.sorts)


def emit_case(index: str, fol_path: Path) -> tuple[str, str]:
    sig = fol2sl.parse_fol_signature(fol_path)
    models, constraints = fol2sl.parse_fol(fol_path)
    layout = build_layout(sig, models, constraints)
    source = fol2sl.fol_source(fol_path)
    pos = sum(1 for _name, expected in constraints if expected)
    neg = len(constraints) - pos
    header = [
        f";; FO_{index}: SemGuS finite-model encoding",
        f";; source: {source}",
        f";; models: {len(models)}, pos: {pos}, neg: {neg}",
        f";; sorts: {max_domain_comment(layout)}",
        f";; model_inputs: {len(layout.model_inputs)}",
        "",
    ]
    text = "\n".join(header)
    text += declare_term_types(layout)
    text += "\n\n"
    text += semantics(layout)
    text += "\n\n"
    text += "(synth-fun phi () Start)\n\n"
    text += "\n".join(constraint_lines(layout))
    text += "\n(check-synth)\n"
    manifest = "\t".join(
        [
            f"{index}.sl",
            f"models={len(models)}",
            f"pos={pos}",
            f"neg={neg}",
            f"sorts={len(sig.sorts)}",
            f"model_inputs={len(layout.model_inputs)}",
            f"max_domains={max_domain_comment(layout)}",
            source,
        ]
    )
    return text, manifest


def parse_ids(spec: str | None) -> set[str] | None:
    if not spec:
        return None
    out: set[str] = set()
    for part in spec.split(","):
        part = part.strip()
        if not part:
            continue
        if "-" in part:
            lo, hi = part.split("-", 1)
            for n in range(int(lo), int(hi) + 1):
                out.add(f"{n:04d}")
        else:
            out.add(f"{int(part):04d}")
    return out


def parse_source(text: str) -> str:
    match = re.search(r"^;; source: (.*)$", text, re.M)
    return match.group(1) if match else ""


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--ids", help="Comma-separated ids or ranges, e.g. 0001,0100-0105")
    parser.add_argument("--start", type=int, default=None)
    parser.add_argument("--end", type=int, default=None)
    parser.add_argument("--clean", action="store_true", help="remove stale generated .sl files first")
    args = parser.parse_args()

    selected = parse_ids(args.ids)
    all_paths = sorted((FO / "fol").glob("[0-9][0-9][0-9][0-9].fol"))
    paths = []
    for path in all_paths:
        index = int(path.stem)
        if selected is not None and path.stem not in selected:
            continue
        if args.start is not None and index < args.start:
            continue
        if args.end is not None and index > args.end:
            continue
        paths.append(path)
    if not paths:
        raise SystemExit("no FO .fol files selected")

    args.out.mkdir(parents=True, exist_ok=True)
    if args.clean:
        for old in args.out.glob("[0-9][0-9][0-9][0-9].sl"):
            old.unlink()

    manifest: list[str] = []
    for fol_path in paths:
        text, row = emit_case(fol_path.stem, fol_path)
        (args.out / f"{fol_path.stem}.sl").write_text(text)
        manifest.append(row)
        print(row)

    existing_rows: dict[str, str] = {}
    manifest_path = args.out / "MANIFEST.txt"
    if manifest_path.exists() and not args.clean:
        for line in manifest_path.read_text().splitlines():
            if line.strip():
                existing_rows[line.split("\t", 1)[0]] = line
    for row in manifest:
        existing_rows[row.split("\t", 1)[0]] = row
    ordered = [existing_rows[name] for name in sorted(existing_rows)]
    manifest_path.write_text("\n".join(ordered) + "\n")


if __name__ == "__main__":
    main()
