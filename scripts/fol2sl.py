#!/usr/bin/env python3
"""Convert FOLseparators fixed-model .fol files to Delis FO benchmark files.

The converter derives Delis signatures and K=2 FO grammars directly from each
.fol signature, then regenerates model blocks and +/- constraints.
"""
from __future__ import annotations

import argparse
import hashlib
import os
import re
import shutil
from itertools import product
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parent.parent / "FO"
DEFAULT_INPUT_DIR = Path(os.environ.get("DELIS_FO_REBUILD_WORK_DIR", "/private/tmp/delis-fo-generated-k2"))


def tokenize(text: str) -> list[str]:
    tokens: list[str] = []
    i = 0
    while i < len(text):
        c = text[i]
        if c == ";":
            while i < len(text) and text[i] != "\n":
                i += 1
            continue
        if c in "()":
            tokens.append(c)
            i += 1
        elif c in " \t\n\r":
            i += 1
        elif c == '"':
            j = i + 1
            while j < len(text) and text[j] != '"':
                if text[j] == "\\":
                    j += 1
                j += 1
            tokens.append(text[i : j + 1])
            i = j + 1
        else:
            j = i
            while j < len(text) and text[j] not in "() \t\n\r;":
                j += 1
            tokens.append(text[i:j])
            i = j
    return tokens


def parse_sexp(tokens: list[str], pos: int = 0) -> tuple[Any, int]:
    if tokens[pos] == "(":
        items = []
        pos += 1
        while tokens[pos] != ")":
            value, pos = parse_sexp(tokens, pos)
            items.append(value)
        return items, pos + 1
    return tokens[pos], pos + 1


def parse_all(text: str) -> list[Any]:
    tokens = tokenize(text)
    out = []
    pos = 0
    while pos < len(tokens):
        value, pos = parse_sexp(tokens, pos)
        out.append(value)
    return out


class Sig:
    def __init__(self) -> None:
        self.sorts: list[str] = []
        self.relations: dict[str, list[str]] = {}
        self.functions: dict[str, tuple[list[str], str]] = {}
        self.constants: dict[str, str] = {}


class Context:
    def __init__(self, bindings: tuple[tuple[str, str], ...]) -> None:
        self.bindings = bindings

    @property
    def key(self) -> str:
        if not self.bindings:
            return "0"
        return ".".join(part for binding in self.bindings for part in binding)

    @property
    def ctor_key(self) -> str:
        if not self.bindings:
            return "0"
        return "ctx-" + "-".join(part for binding in self.bindings for part in binding)

    @property
    def formula(self) -> str:
        return "FO0" if not self.bindings else f"Formula.{self.key}"

    @property
    def aspect(self) -> str:
        return "FO.Asp" if not self.bindings else f"FO.Asp.{self.key}"

    @property
    def sem(self) -> str:
        return "FO.Sem" if not self.bindings else f"FO.{self.key}.Sem"

    def get(self, var: str) -> str | None:
        for name, sort in self.bindings:
            if name == var:
                return sort
        return None

    def quantified(self, var: str, sort: str) -> "Context":
        mapping = dict(self.bindings)
        mapping[var] = sort
        ordered = tuple((name, mapping[name]) for name in ("x0", "x1") if name in mapping)
        return Context(ordered)


def parse_fol_signature(path: Path) -> Sig:
    sig = Sig()
    for expr in parse_all(path.read_text()):
        if not isinstance(expr, list) or not expr:
            continue
        head = expr[0]
        if head == "sort":
            sig.sorts.append(expr[1])
        elif head == "relation":
            sig.relations[expr[1]] = expr[2:]
        elif head == "constant":
            sig.constants[expr[1]] = expr[2]
        elif head == "function":
            sig.functions[expr[1]] = (expr[2:-1], expr[-1])
    if not sig.sorts:
        raise RuntimeError(f"no signature declarations in {path}")
    return sig


def signature_fingerprint(sig: Sig) -> str:
    parts = []
    parts.extend(f"sort {s}" for s in sig.sorts)
    parts.extend(f"constant {c} {s}" for c, s in sorted(sig.constants.items()))
    parts.extend(f"function {f} {' '.join(args)} -> {ret}" for f, (args, ret) in sorted(sig.functions.items()))
    parts.extend(f"relation {r} {' '.join(args)}" for r, args in sorted(sig.relations.items()))
    return "\n".join(parts)


def slugify(text: str) -> str:
    text = Path(text).stem if text else "fo"
    text = re.sub(r"[^A-Za-z0-9]+", "_", text).strip("_").lower()
    return text or "fo"


def signature_basename(fol_path: Path, sig: Sig) -> str:
    file_name, _ = fol_key(fol_path)
    digest = hashlib.sha1(signature_fingerprint(sig).encode()).hexdigest()[:8]
    return f"{slugify(file_name)}-{digest}.sl"


def contexts(sorts: list[str]) -> list[Context]:
    out = [Context(())]
    out.extend(Context(((var, sort),)) for var in ("x0", "x1") for sort in sorts)
    out.extend(Context((("x0", left), ("x1", right))) for left in sorts for right in sorts)
    return out


def term_sort(ctx: Context, sort: str) -> str:
    return f"Term.{ctx.key}.{sort}"


def term_sem(ctx: Context, sort: str) -> str:
    return f"{term_sort(ctx, sort)}.Sem"


def term_constructors(sig: Sig, ctx: Context) -> dict[str, list[tuple[str, list[str], tuple[str, str] | tuple[()]]]]:
    ctors: dict[str, list[tuple[str, list[str], tuple[str, str] | tuple[()]]]] = {sort: [] for sort in sig.sorts}
    available: set[str] = set()
    for sort in sig.sorts:
        for var, var_sort in ctx.bindings:
            if var_sort == sort:
                ctors[sort].append((f"fol.{ctx.ctor_key}.var.{var}.{sort}", [], (var, sort)))
        for const, ret in sorted(sig.constants.items()):
            if ret == sort:
                ctors[sort].append((f"fol.{ctx.ctor_key}.term.{const}", [], ()))
        if ctors[sort]:
            available.add(sort)

    changed = True
    added_functions: set[str] = set()
    while changed:
        changed = False
        for fun, (args, ret) in sorted(sig.functions.items()):
            if fun in added_functions or ret not in ctors:
                continue
            if all(arg in available for arg in args):
                ctors[ret].append((f"fol.{ctx.ctor_key}.term.{fun}", [term_sort(ctx, arg) for arg in args], ()))
                added_functions.add(fun)
                if ret not in available:
                    available.add(ret)
                    changed = True
    return ctors


def write_signature(path: Path, sig: Sig) -> None:
    names = sig.sorts + list(sig.constants) + list(sig.functions) + list(sig.relations)
    lines = [f"(provide {' '.join(names)})", ""]
    for sort in sig.sorts:
        lines.append(f"(declare-sort {sort} 0)")
    for const, sort in sig.constants.items():
        lines.append(f"(declare-fun {const} () {sort})")
    for fun, (args, ret) in sig.functions.items():
        lines.append(f"(declare-fun {fun} ({' '.join(args)}) {ret})")
    for rel, args in sig.relations.items():
        lines.append(f"(declare-fun {rel} ({' '.join(args)}) Bool)")
    path.write_text("\n".join(lines) + "\n")


def aspect_ctor_args(ctx: Context, value_for: str | None = None) -> str:
    args = ["(model asp)"]
    for var, _ in ctx.bindings:
        args.append("v" if var == value_for else f"({var} asp)")
    return " ".join(args)


def atom_call(sig: Sig, ctx: Context, rel: str, args: list[str]) -> str:
    if not args:
        return f"({rel})"
    vals = " ".join(f"({term_sem(ctx, sort)} a{i} asp)" for i, sort in enumerate(args))
    return f"({rel} {vals})"


def generate_theory(sig: Sig, sig_req: str) -> str:
    ctxs = contexts(sig.sorts)
    terms_by_ctx = {ctx.key: term_constructors(sig, ctx) for ctx in ctxs}
    formula_sorts = [ctx.formula for ctx in ctxs]
    term_sorts = [term_sort(ctx, sort) for ctx in ctxs for sort, ctors in terms_by_ctx[ctx.key].items() if ctors]

    term_types = formula_sorts + term_sorts
    groups: list[list[tuple[str, list[str]]]] = []
    for ctx in ctxs:
        group: list[tuple[str, list[str]]] = [
            (f"fol.{ctx.ctor_key}.true", []),
            (f"fol.{ctx.ctor_key}.false", []),
            (f"fol.{ctx.ctor_key}.not", [ctx.formula]),
            (f"fol.{ctx.ctor_key}.and", [ctx.formula, ctx.formula]),
            (f"fol.{ctx.ctor_key}.or", [ctx.formula, ctx.formula]),
        ]
        for var in ("x0", "x1"):
            for sort in sig.sorts:
                target = ctx.quantified(var, sort)
                group.append((f"fol.{ctx.ctor_key}.forall.{var}.{sort}", [target.formula]))
                group.append((f"fol.{ctx.ctor_key}.exists.{var}.{sort}", [target.formula]))
        for sort in sig.sorts:
            if terms_by_ctx[ctx.key].get(sort):
                group.append((f"fol.{ctx.ctor_key}.eq.{sort}", [term_sort(ctx, sort), term_sort(ctx, sort)]))
        for rel, args in sig.relations.items():
            if all(terms_by_ctx[ctx.key].get(sort) for sort in args):
                group.append((f"fol.{ctx.ctor_key}.atom.{rel}", [term_sort(ctx, sort) for sort in args]))
        groups.append(group)
    for ctx in ctxs:
        for sort in sig.sorts:
            ctors = terms_by_ctx[ctx.key].get(sort, [])
            if ctors:
                groups.append([(name, args) for name, args, _ in ctors])

    provides = ["FO.Asp"] + [ctx.aspect for ctx in ctxs if ctx.bindings]
    provides += term_sorts + [f"{name}.Sem" for name in term_sorts]
    provides += formula_sorts + [ctx.sem for ctx in ctxs]
    provides += [name for group in groups for name, _ in group]

    lines = [f"(provide {' '.join(provides)})", f'(require "{sig_req}")', ""]
    lines.append("(declare-term-types")
    lines.append(" (" + " ".join(f"({name} 0)" for name in term_types) + ")")
    lines.append(" (" + "\n  ".join("(" + "\n   ".join(f"({name}{(' ' + ' '.join(args)) if args else ''})" for name, args in group) + ")" for group in groups) + "))")
    lines.append("")

    for ctx in ctxs:
        fields = ["(model Model)"] + [f"({var} {sort})" for var, sort in ctx.bindings]
        lines.append(f"(define-aspects {ctx.aspect} (record {' '.join(fields)}))")
        lines.append("")

    for ctx in ctxs:
        for sort, ctors in terms_by_ctx[ctx.key].items():
            if not ctors:
                continue
            lines.append("(define-semantics")
            lines.append(f"  (({term_sem(ctx, sort)} (term {term_sort(ctx, sort)}) (asp {ctx.aspect})))")
            lines.append(f"  :returns {sort}")
            lines.append("  ((match term")
            for name, args, var_info in ctors:
                params = " ".join(f"a{i}" for i in range(len(args)))
                pattern = f"({name}{(' ' + params) if params else ''})"
                sym = name.rsplit(".term.", 1)[1] if ".term." in name else ""
                if var_info:
                    body = f"({var_info[0]} asp)"
                elif sym in sig.constants:
                    body = sym
                else:
                    fun_args = sig.functions[sym][0]
                    call_args = " ".join(f"({term_sem(ctx, arg)} a{i} asp)" for i, arg in enumerate(fun_args))
                    body = f"({sym} {call_args})"
                lines.append(f"     ({pattern} {body})")
            lines.append("  )))")
            lines.append("")

    for ctx in ctxs:
        lines.append("(define-semantics")
        lines.append(f"  (({ctx.sem} (phi {ctx.formula}) (asp {ctx.aspect})))")
        lines.append("  ((match phi")
        lines.append(f"     ((fol.{ctx.ctor_key}.true) true)")
        lines.append(f"     ((fol.{ctx.ctor_key}.false) false)")
        lines.append(f"     ((fol.{ctx.ctor_key}.not p) (not ({ctx.sem} p asp)))")
        lines.append(f"     ((fol.{ctx.ctor_key}.and p q) (and ({ctx.sem} p asp) ({ctx.sem} q asp)))")
        lines.append(f"     ((fol.{ctx.ctor_key}.or p q) (or ({ctx.sem} p asp) ({ctx.sem} q asp)))")
        for var in ("x0", "x1"):
            for sort in sig.sorts:
                target = ctx.quantified(var, sort)
                target_args = aspect_ctor_args(target, var)
                for quant in ("forall", "exists"):
                    lines.append(f"     ((fol.{ctx.ctor_key}.{quant}.{var}.{sort} p)")
                    lines.append(f"      ({quant} ((v (univ ({sort} (model asp)))))")
                    lines.append(f"        ({target.sem} p ({target.aspect} {target_args}))))")
        for sort in sig.sorts:
            if terms_by_ctx[ctx.key].get(sort):
                lines.append(f"     ((fol.{ctx.ctor_key}.eq.{sort} lhs rhs)")
                lines.append(f"      (= ({term_sem(ctx, sort)} lhs asp) ({term_sem(ctx, sort)} rhs asp)))")
        for rel, args in sig.relations.items():
            if all(terms_by_ctx[ctx.key].get(sort) for sort in args):
                params = " ".join(f"a{i}" for i in range(len(args)))
                lines.append(f"     ((fol.{ctx.ctor_key}.atom.{rel}{(' ' + params) if params else ''}) {atom_call(sig, ctx, rel, args)})")
        lines.append("  )))")
        lines.append("")
    return "\n".join(lines)


class Model:
    def __init__(self, name: str) -> None:
        self.name = name
        self.univs: dict[str, list[str]] = {}
        self.rel_true: dict[str, set[tuple[str, ...]]] = {}
        self.fun_vals: dict[str, dict[tuple[str, ...], str]] = {}
        self.const_vals: dict[str, str] = {}


def parse_sig(path: Path) -> Sig:
    sig = Sig()
    for expr in parse_all(path.read_text()):
        if not isinstance(expr, list) or not expr:
            continue
        if expr[0] == "declare-sort":
            sig.sorts.append(expr[1])
        elif expr[0] == "declare-fun":
            name = expr[1]
            args = expr[2]
            ret = expr[3]
            if ret == "Bool":
                sig.relations[name] = args
            elif len(args) == 0:
                sig.constants[name] = ret
            else:
                sig.functions[name] = (args, ret)
    return sig


def parse_fol(path: Path) -> tuple[list[Model], list[tuple[str, bool]]]:
    models: list[Model] = []
    constraints: list[tuple[str, bool]] = []
    for expr in parse_all(path.read_text()):
        if not isinstance(expr, list) or not expr:
            continue
        if expr[0] == "model":
            model = Model(expr[1])
            for elem in expr[2]:
                model.univs.setdefault(elem[1], []).append(elem[0])
            for fact in expr[3:]:
                if not isinstance(fact, list) or not fact:
                    continue
                if fact[0] == "=":
                    lhs = fact[1]
                    rhs = fact[2]
                    if isinstance(lhs, list):
                        model.fun_vals.setdefault(lhs[0], {})[tuple(lhs[1:])] = rhs
                    else:
                        model.const_vals[lhs] = rhs
                else:
                    model.rel_true.setdefault(fact[0], set()).add(tuple(fact[1:]))
            models.append(model)
        elif expr[0] == "constraint":
            for item in expr[1:]:
                if isinstance(item, list) and item and item[0] == "not":
                    constraints.append((item[1], False))
                else:
                    constraints.append((item, True))
    return models, constraints


def parse_require(path: Path, prefix: str | tuple[str, ...] | None = None) -> str:
    for expr in parse_all(path.read_text()):
        if isinstance(expr, list) and expr and expr[0] == "require":
            req = expr[1].strip('"')
            if prefix is None:
                return req
            if isinstance(prefix, tuple):
                if req.startswith(prefix):
                    return req
            elif req.startswith(prefix):
                return req
    raise RuntimeError(f"no matching require in {path}")


def parse_set_info_source(path: Path) -> str:
    m = re.search(r'^\(set-info :source "([^"]*)"\)', path.read_text(), re.M)
    if not m:
        return "FOLseparators"
    return m.group(1)


def fol_source(path: Path) -> str:
    file_name, conjecture = fol_key(path)
    return f"{file_name}:{conjecture}"


def fol_key(path: Path) -> tuple[str, str]:
    file_name = ""
    conjecture = ""
    for line in path.read_text().splitlines():
        if line.startswith("; File:"):
            file_name = line.removeprefix("; File:").strip()
        elif line.startswith("; Conjecture"):
            conjecture = line.removeprefix("; Conjecture").strip()
        if file_name and conjecture:
            return file_name, conjecture
    raise RuntimeError(f"missing ; File or ; Conjecture header in {path}")


def build_metadata_index() -> dict[tuple[str, str], str]:
    index: dict[tuple[str, str], str] = {}
    for old_fol in sorted((ROOT / "fol").glob("*.fol")):
        key = fol_key(old_fol)
        # Some historical files are duplicated with different model sets. The
        # signature/theory metadata is identical, so the first occurrence is OK.
        index.setdefault(key, old_fol.stem)
    return index


def metadata_instance_path(num: str, level: str) -> Path:
    root_instance = ROOT / f"{num}.sl"
    if root_instance.exists():
        return root_instance
    return ROOT / level / f"{num}.sl"


def metadata_model_path(num: str) -> Path:
    flat_model = ROOT / "models" / f"{num}.sl"
    if flat_model.exists():
        return flat_model
    return ROOT / "global" / "models" / f"{num}.sl"


def default_value(model: Model, sort: str) -> str:
    values = model.univs.get(sort, [])
    if not values:
        raise RuntimeError(f"model {model.name} has empty universe for sort {sort}")
    return values[0]


def match_block(name: str, arms: list[tuple[tuple[str, ...], str]], arity: int, default: str) -> list[str]:
    lines = [f"  (interp-fun {name} (match ("]
    for args, value in arms:
        lines.append(f"    (({' '.join(args)}) {value})")
    lines.append(f"    (({' '.join(['_'] * arity)}) {default})")
    lines.append("  )))")
    return lines


def model_to_sl(model: Model, sig: Sig) -> str:
    lines = [f"(define-model {model.name}"]
    for sort in sig.sorts:
        elems = " ".join(model.univs.get(sort, []))
        lines.append(f"  (interp-sort {sort} ({elems}))")
    for const, sort in sig.constants.items():
        lines.append(f"  (interp-fun {const} ({model.const_vals.get(const, default_value(model, sort))}))")
    for fun, (arg_sorts, ret_sort) in sig.functions.items():
        vals = model.fun_vals.get(fun, {})
        default = default_value(model, ret_sort)
        arms = sorted(vals.items())
        lines.extend(match_block(fun, arms, len(arg_sorts), default))
    for rel, arg_sorts in sig.relations.items():
        true_tuples = sorted(model.rel_true.get(rel, set()))
        if len(arg_sorts) == 0:
            lines.append(f"  (interp-fun {rel} ({'true' if () in true_tuples else 'false'}))")
            continue
        arms = [(args, "true") for args in true_tuples]
        lines.extend(match_block(rel, arms, len(arg_sorts), "false"))
    lines.append(")")
    return "\n".join(lines)


def write_models(path: Path, sig_req: str, models: list[Model], sig: Sig) -> None:
    provide = " ".join(m.name for m in models)
    chunks = [f'(require "{sig_req}")', f"(provide {provide})", ""]
    for model in models:
        chunks.append(model_to_sl(model, sig))
        chunks.append("")
    path.write_text("\n".join(chunks))


def write_instance(path: Path, source: str, theory_req: str, model_req: str, constraints: list[tuple[str, bool]]) -> None:
    lines = [
        '(set-info :author "Chentian Wu")',
        f'(set-info :source "{source}")',
        "",
        f'(require "{theory_req}")',
        f'(require "{model_req}")',
        "",
        "(synth-fun phi () FO0)",
        "",
    ]
    for name, positive in constraints:
        if positive:
            lines.append(f"(constraint (FO.Sem phi (FO.Asp {name})))")
        else:
            lines.append(f"(constraint (not (FO.Sem phi (FO.Asp {name}))))")
    lines.extend(["", "(check-synth)", ""])
    path.write_text("\n".join(lines))


def expand_ids(spec: str | None) -> set[str] | None:
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


def convert(input_dir: Path, level: str, force: bool, ids: set[str] | None) -> None:
    fol_dir = input_dir / "fol"
    out_level = input_dir / level
    out_models = input_dir / "global" / "models"
    out_sigs = input_dir / "global" / "signatures"
    out_theories = out_level / "theories"

    if not fol_dir.exists():
        raise RuntimeError(f"missing {fol_dir}")
    if force:
        for path in [out_level, input_dir / "global"]:
            if path.exists():
                shutil.rmtree(path)
    out_models.mkdir(parents=True, exist_ok=True)
    out_sigs.mkdir(parents=True, exist_ok=True)
    out_theories.mkdir(parents=True, exist_ok=True)

    count = 0
    for fol_path in sorted(fol_dir.glob("*.fol")):
        num = fol_path.stem
        if ids is not None and num not in ids:
            continue
        try:
            sig = parse_fol_signature(fol_path)
            sig_name = signature_basename(fol_path, sig)
            theory_name = sig_name
            dst_sig = out_sigs / sig_name
            dst_theory = out_theories / theory_name
            if not dst_sig.exists():
                write_signature(dst_sig, sig)
            if not dst_theory.exists():
                write_sig_req = f"../../global/signatures/{sig_name}"
                (out_theories / theory_name).write_text(generate_theory(sig, write_sig_req))

            models, constraints = parse_fol(fol_path)
            if not models or not constraints:
                raise RuntimeError(f"{fol_path} has no models or constraints")

            write_models(out_models / f"{num}.sl", f"../signatures/{sig_name}", models, sig)
            write_instance(
                out_level / f"{num}.sl",
                fol_source(fol_path),
                f"theories/{theory_name}",
                f"../global/models/{num}.sl",
                constraints,
            )
        except Exception as exc:
            raise RuntimeError(f"failed converting {num}") from exc
        count += 1
    print(f"converted {count} instances into {input_dir}/{level}")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input-dir", type=Path, default=DEFAULT_INPUT_DIR)
    parser.add_argument("--level", default="FO2")
    parser.add_argument("--ids", help="Comma-separated ids or ranges, e.g. 0307-0320")
    parser.add_argument("--force", action="store_true")
    args = parser.parse_args()
    convert(args.input_dir, args.level, args.force, expand_ids(args.ids))


if __name__ == "__main__":
    main()
