#!/usr/bin/env python3
"""Generate SemGuS CTL benchmarks from benchmark/CTL.

The generated encoding specializes each benchmark to its referenced transition
systems.  CTL.Sem is a relational interpreter over:

  model id, state id, remaining depth, result

This keeps the model data out of the input tuple while avoiding Delis aspects.
The bounded semantics follows the existing CTL theories: AF/EF/AG/EG/AU/EU
recurse on the same formula with depth - 1.
"""

from __future__ import annotations

import argparse
import re
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
CTL = ROOT / "CTL"
MODELS = CTL / "models"
THEORIES = CTL / "theories"
OUT = CTL / "semgus"


UNARY_OPS = {"ctl.not", "ctl.AX", "ctl.EX", "ctl.AF", "ctl.EF", "ctl.AG", "ctl.EG"}
BINARY_OPS = {"ctl.and", "ctl.or", "ctl.AU", "ctl.EU"}
ZERO_OPS = {"ctl.top"}


@dataclass(frozen=True)
class Model:
    name: str
    states: list[str]
    initial: int
    props: dict[str, set[int]]
    succ: dict[int, list[int]]

    @property
    def depth_bound(self) -> int:
        return max(0, len(self.states) - 1)


@dataclass(frozen=True)
class Constraint:
    model: str
    expected: bool


@dataclass(frozen=True)
class Case:
    index: int
    source: str
    theory: str
    constructors: list[str]
    models: list[Model]
    constraints: list[Constraint]

    @property
    def total_states(self) -> int:
        return sum(len(model.states) for model in self.models)

    @property
    def max_depth(self) -> int:
        return max(model.depth_bound for model in self.models)


def atom_or(items: list[str]) -> str:
    items = [item for item in items if item != "false"]
    if not items:
        return "false"
    if "true" in items:
        return "true"
    if len(items) == 1:
        return items[0]
    return f"(or {' '.join(items)})"


def split_top_level_items(text: str) -> list[str]:
    items: list[str] = []
    pos = 0
    while pos < len(text):
        while pos < len(text) and text[pos].isspace():
            pos += 1
        if pos >= len(text):
            break
        start = pos
        if text[pos] == "(":
            depth = 0
            while pos < len(text):
                if text[pos] == "(":
                    depth += 1
                elif text[pos] == ")":
                    depth -= 1
                    if depth == 0:
                        pos += 1
                        break
                pos += 1
            items.append(text[start:pos])
        else:
            while pos < len(text) and not text[pos].isspace():
                pos += 1
            items.append(text[start:pos])
    return items


def flatten_and_items(items: list[str]) -> list[str]:
    flat: list[str] = []
    for item in items:
        stripped = item.strip()
        if stripped.startswith("(and ") and stripped.endswith(")"):
            flat.extend(flatten_and_items(split_top_level_items(stripped[5:-1])))
        else:
            flat.append(stripped)
    return flat


def atom_and(items: list[str]) -> str:
    items = flatten_and_items(items)
    items = [item for item in items if item != "true"]
    if not items:
        return "true"
    if "false" in items:
        return "false"
    if len(items) == 1:
        return items[0]
    return f"(and {' '.join(items)})"


def eq(lhs: str, rhs: str) -> str:
    return f"(= {lhs} {rhs})"


def sem_call(term: str, model: str, state: int | str, depth: str, output: str) -> str:
    return f"(CTL.Sem {term} {model} {state} {depth} {output})"


def sem_lit(term: str, state: int | str, depth: str, value: bool) -> str:
    return sem_call(term, "model", state, depth, "true" if value else "false")


def result_is(value: bool) -> str:
    return eq("result", "true" if value else "false")


def bool_cases_for_child(term: str, state: int | str, depth: str) -> str:
    return atom_or(
        [
            atom_and([sem_lit(term, state, depth, True), result_is(True)]),
            atom_and([sem_lit(term, state, depth, False), result_is(False)]),
        ]
    )


def calls_lit(term: str, outputs: list[tuple[int, str]], depth: str, value: bool) -> list[str]:
    return [sem_lit(term, state, depth, value) for state, _var in outputs]


def sexpr_at(text: str, start: int) -> str:
    depth = 0
    for pos in range(start, len(text)):
        ch = text[pos]
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
            if depth == 0:
                return text[start : pos + 1]
    raise ValueError(f"unclosed s-expression at byte {start}")


def interp_forms(text: str) -> list[str]:
    forms: list[str] = []
    pos = 0
    needle = "(interp-fun"
    while True:
        start = text.find(needle, pos)
        if start < 0:
            return forms
        forms.append(sexpr_at(text, start))
        pos = start + len(needle)


def parse_model(path: Path) -> Model:
    text = path.read_text()
    name_match = re.search(r"\(define-model\s+([A-Za-z0-9_]+)", text)
    if not name_match:
        raise ValueError(f"missing model name in {path}")
    name = name_match.group(1)

    sort_match = re.search(r"\(interp-sort\s+U\s+\((.*?)\)\)", text, re.S)
    if not sort_match:
        raise ValueError(f"missing U universe in {path}")
    states = sort_match.group(1).split()
    state_to_id = {state: idx for idx, state in enumerate(states)}

    initial_match = re.search(r"\(interp-fun\s+initial\s+\(([^()\s]+)\)\)", text)
    if not initial_match:
        raise ValueError(f"missing initial state in {path}")
    initial_state = initial_match.group(1)
    if initial_state not in state_to_id:
        raise ValueError(f"unknown initial state {initial_state} in {path}")

    props: dict[str, set[int]] = {}
    succ_sets: dict[int, set[int]] = {idx: set() for idx in range(len(states))}
    for form in interp_forms(text):
        head = re.match(r"\(interp-fun\s+([A-Za-z0-9_.]+)", form)
        if not head:
            continue
        fname = head.group(1)
        if fname in {"initial", "czero", "cbot", "bound", "next.depth"}:
            continue
        true_arms = re.findall(r"\(\(([^()]*)\)\s+true\)", form)
        if fname == "R":
            for arm in true_arms:
                parts = arm.split()
                if len(parts) != 2 or "_" in parts:
                    continue
                src, dst = parts
                if src in state_to_id and dst in state_to_id:
                    succ_sets[state_to_id[src]].add(state_to_id[dst])
            continue
        values: set[int] = set()
        for arm in true_arms:
            parts = arm.split()
            if len(parts) != 1 or parts[0] == "_":
                continue
            if parts[0] in state_to_id:
                values.add(state_to_id[parts[0]])
        props[fname] = values

    succ = {state: sorted(targets) for state, targets in succ_sets.items()}
    return Model(name=name, states=states, initial=state_to_id[initial_state], props=props, succ=succ)


def parse_string_info(text: str, key: str) -> str:
    match = re.search(rf'\(set-info\s+:{key}\s+"([^"]*)"\)', text)
    return match.group(1) if match else ""


def parse_theory(path: Path) -> list[str]:
    text = path.read_text()
    constructors: list[str] = []
    seen: set[str] = set()
    for name in re.findall(r"\(([A-Za-z0-9_.]+)(?:\s+CTL(?:\s+CTL)?)?\)", text):
        if not (name.startswith("ap.") or name.startswith("nap.") or name.startswith("ctl.")):
            continue
        if name in seen:
            continue
        if name.startswith(("ap.", "nap.")) or name in ZERO_OPS or name in UNARY_OPS or name in BINARY_OPS:
            constructors.append(name)
            seen.add(name)
    if not constructors:
        raise ValueError(f"no CTL constructors found in {path}")
    return constructors


def parse_case(index: int) -> Case:
    path = CTL / f"{index:04d}.sl"
    text = path.read_text()
    theory_match = re.search(r'\(require\s+"theories/([^"]+)"\)', text)
    if not theory_match:
        raise ValueError(f"missing CTL theory require in {path}")
    theory = theory_match.group(1)
    constructors = parse_theory(THEORIES / theory)

    model_names = re.findall(r'\(require\s+"models/([^"]+)"\)', text)
    if not model_names:
        raise ValueError(f"missing model requires in {path}")
    models = [parse_model(MODELS / model_name) for model_name in model_names]

    constraints: list[Constraint] = []
    constraint_re = re.compile(
        r"\(constraint\s+"
        r"(?P<neg>\(not\s+)?"
        r"\(CTL\.Sem\s+phi\s+\(CTL\.Asp\s+(?P<model>[A-Za-z0-9_]+)\s+initial\s+\(bound\s+initial\)\)\)"
        r"\)?\)",
        re.S,
    )
    for match in constraint_re.finditer(text):
        constraints.append(Constraint(model=match.group("model"), expected=match.group("neg") is None))
    if not constraints:
        raise ValueError(f"no CTL constraints parsed in {path}")

    return Case(
        index=index,
        source=parse_string_info(text, "source"),
        theory=theory,
        constructors=constructors,
        models=models,
        constraints=constraints,
    )


def constructor_decl(name: str) -> str:
    if name.startswith(("ap.", "nap.")) or name in ZERO_OPS:
        return f"({name})"
    if name in UNARY_OPS:
        return f"({name} CTL)"
    if name in BINARY_OPS:
        return f"({name} CTL CTL)"
    raise ValueError(f"unknown CTL constructor: {name}")


def start_sem() -> str:
    return f"""(! (match t (
            (($eval t1)
                {bool_cases_for_child("t1", "state", "depth")}
            )
        )) :input (model state depth) :output (result))"""


def state_cond(model_id: int, state_id: int) -> str:
    return atom_and([eq("model", str(model_id)), eq("state", str(state_id))])


def dispatch(case: Case, branch) -> str:
    branches: list[str] = []
    for model_id, model in enumerate(case.models):
        for state_id in range(len(model.states)):
            bodies = branch(model_id, model, state_id)
            if isinstance(bodies, str):
                bodies = [bodies]
            for body in bodies:
                branches.append(atom_and([state_cond(model_id, state_id), body]))
    return atom_or(branches)


def prop_case(case: Case, prop: str, negated: bool) -> str:
    def branch(_model_id: int, model: Model, state_id: int) -> str:
        value = state_id in model.props.get(prop, set())
        if negated:
            value = not value
        return eq("result", "true" if value else "false")

    return dispatch(case, branch)


def top_case(case: Case) -> str:
    return dispatch(case, lambda _model_id, _model, _state_id: eq("result", "true"))


def next_outputs(model: Model, state_id: int, prefix: str) -> list[tuple[int, str]]:
    return [(succ, f"{prefix}{idx}") for idx, succ in enumerate(model.succ[state_id])]


def modal_next_case(case: Case, op: str) -> str:
    quantifier = "all" if op == "ctl.AX" else "any"

    def branch(_model_id: int, model: Model, state_id: int) -> str:
        outputs = next_outputs(model, state_id, "N")
        if quantifier == "all":
            alternatives = [atom_and([*calls_lit("t1", outputs, "depth", True), result_is(True)])]
            alternatives.extend(
                atom_and([sem_lit("t1", succ, "depth", False), result_is(False)])
                for succ, _var in outputs
            )
            return alternatives
        alternatives = [
            atom_and([sem_lit("t1", succ, "depth", True), result_is(True)])
            for succ, _var in outputs
        ]
        alternatives.append(atom_and([*calls_lit("t1", outputs, "depth", False), result_is(False)]))
        return alternatives

    return dispatch(case, branch)


def binary_bool_case(case: Case, op: str) -> str:
    def branch(_model_id: int, _model: Model, _state_id: int) -> str:
        cases = []
        for left in [False, True]:
            for right in [False, True]:
                value = (left and right) if op == "ctl.and" else (left or right)
                cases.append(
                    atom_and(
                        [
                            sem_lit("t1", "state", "depth", left),
                            sem_lit("t2", "state", "depth", right),
                            result_is(value),
                        ]
                    )
                )
        return cases

    return dispatch(case, branch)


def not_case(case: Case) -> str:
    def branch(_model_id: int, _model: Model, _state_id: int) -> str:
        return [
            atom_and([sem_lit("t1", "state", "depth", True), result_is(False)]),
            atom_and([sem_lit("t1", "state", "depth", False), result_is(True)]),
        ]

    return dispatch(case, branch)


def fix_unary_case(case: Case, op: str) -> str:
    is_forall = op in {"ctl.AF", "ctl.AG"}
    is_eventual = op in {"ctl.AF", "ctl.EF"}

    def branch(_model_id: int, model: Model, state_id: int) -> str:
        outputs = next_outputs(model, state_id, "R")
        all_rec_true = calls_lit("phi", outputs, "(- depth 1)", True)
        all_rec_false = calls_lit("phi", outputs, "(- depth 1)", False)
        alternatives = [
            atom_and(["(<= depth 0)", sem_lit("t1", "state", "depth", True), result_is(True)]),
            atom_and(["(<= depth 0)", sem_lit("t1", "state", "depth", False), result_is(False)]),
        ]
        if is_eventual:
            alternatives.append(
                atom_and(["(> depth 0)", sem_lit("t1", "state", "depth", True), result_is(True)])
            )
            if is_forall:
                alternatives.append(
                    atom_and(
                        [
                            "(> depth 0)",
                            sem_lit("t1", "state", "depth", False),
                            *all_rec_true,
                            result_is(True),
                        ]
                    )
                )
                alternatives.extend(
                    atom_and(
                        [
                            "(> depth 0)",
                            sem_lit("t1", "state", "depth", False),
                            sem_lit("phi", succ, "(- depth 1)", False),
                            result_is(False),
                        ]
                    )
                    for succ, _var in outputs
                )
            else:
                alternatives.extend(
                    atom_and(
                        [
                            "(> depth 0)",
                            sem_lit("t1", "state", "depth", False),
                            sem_lit("phi", succ, "(- depth 1)", True),
                            result_is(True),
                        ]
                    )
                    for succ, _var in outputs
                )
                alternatives.append(
                    atom_and(
                        [
                            "(> depth 0)",
                            sem_lit("t1", "state", "depth", False),
                            *all_rec_false,
                            result_is(False),
                        ]
                    )
                )
        else:
            alternatives.append(
                atom_and(["(> depth 0)", sem_lit("t1", "state", "depth", False), result_is(False)])
            )
            if is_forall:
                alternatives.append(
                    atom_and(
                        [
                            "(> depth 0)",
                            sem_lit("t1", "state", "depth", True),
                            *all_rec_true,
                            result_is(True),
                        ]
                    )
                )
                alternatives.extend(
                    atom_and(
                        [
                            "(> depth 0)",
                            sem_lit("t1", "state", "depth", True),
                            sem_lit("phi", succ, "(- depth 1)", False),
                            result_is(False),
                        ]
                    )
                    for succ, _var in outputs
                )
            else:
                alternatives.extend(
                    atom_and(
                        [
                            "(> depth 0)",
                            sem_lit("t1", "state", "depth", True),
                            sem_lit("phi", succ, "(- depth 1)", True),
                            result_is(True),
                        ]
                    )
                    for succ, _var in outputs
                )
                alternatives.append(
                    atom_and(
                        [
                            "(> depth 0)",
                            sem_lit("t1", "state", "depth", True),
                            *all_rec_false,
                            result_is(False),
                        ]
                    )
                )
        return alternatives

    return dispatch(case, branch)


def fix_until_case(case: Case, op: str) -> str:
    is_forall = op == "ctl.AU"

    def branch(_model_id: int, model: Model, state_id: int) -> str:
        outputs = next_outputs(model, state_id, "R")
        all_rec_true = calls_lit("phi", outputs, "(- depth 1)", True)
        all_rec_false = calls_lit("phi", outputs, "(- depth 1)", False)
        alternatives = [
            atom_and(["(<= depth 0)", sem_lit("t2", "state", "depth", True), result_is(True)]),
            atom_and(["(<= depth 0)", sem_lit("t2", "state", "depth", False), result_is(False)]),
            atom_and(["(> depth 0)", sem_lit("t2", "state", "depth", True), result_is(True)]),
            atom_and(
                [
                    "(> depth 0)",
                    sem_lit("t2", "state", "depth", False),
                    sem_lit("t1", "state", "depth", False),
                    result_is(False),
                ]
            ),
        ]
        if is_forall:
            alternatives.append(
                atom_and(
                    [
                        "(> depth 0)",
                        sem_lit("t2", "state", "depth", False),
                        sem_lit("t1", "state", "depth", True),
                        *all_rec_true,
                        result_is(True),
                    ]
                )
            )
            alternatives.extend(
                atom_and(
                    [
                        "(> depth 0)",
                        sem_lit("t2", "state", "depth", False),
                        sem_lit("t1", "state", "depth", True),
                        sem_lit("phi", succ, "(- depth 1)", False),
                        result_is(False),
                    ]
                )
                for succ, _var in outputs
            )
        else:
            alternatives.extend(
                atom_and(
                    [
                        "(> depth 0)",
                        sem_lit("t2", "state", "depth", False),
                        sem_lit("t1", "state", "depth", True),
                        sem_lit("phi", succ, "(- depth 1)", True),
                        result_is(True),
                    ]
                )
                for succ, _var in outputs
            )
            alternatives.append(
                atom_and(
                    [
                        "(> depth 0)",
                        sem_lit("t2", "state", "depth", False),
                        sem_lit("t1", "state", "depth", True),
                        *all_rec_false,
                        result_is(False),
                    ]
                )
            )
        return alternatives

    return dispatch(case, branch)


def ctl_case(case: Case, constructor: str) -> str:
    if constructor.startswith("ap."):
        return f"""            ({constructor}
                {prop_case(case, constructor.removeprefix("ap."), False)}
            )"""
    if constructor.startswith("nap."):
        return f"""            ({constructor}
                {prop_case(case, constructor.removeprefix("nap."), True)}
            )"""
    if constructor == "ctl.top":
        return f"""            ({constructor}
                {top_case(case)}
            )"""
    if constructor == "ctl.not":
        return f"""            (({constructor} t1)
                {not_case(case)}
            )"""
    if constructor in {"ctl.AX", "ctl.EX"}:
        return f"""            (({constructor} t1)
                {modal_next_case(case, constructor)}
            )"""
    if constructor in {"ctl.AF", "ctl.EF", "ctl.AG", "ctl.EG"}:
        return f"""            (({constructor} t1)
                {fix_unary_case(case, constructor)}
            )"""
    if constructor in {"ctl.and", "ctl.or"}:
        return f"""            (({constructor} t1 t2)
                {binary_bool_case(case, constructor)}
            )"""
    if constructor in {"ctl.AU", "ctl.EU"}:
        return f"""            (({constructor} t1 t2)
                {fix_until_case(case, constructor)}
            )"""
    raise ValueError(f"unsupported constructor {constructor}")


def ctl_sem(case: Case) -> str:
    cases = "\n".join(ctl_case(case, constructor) for constructor in case.constructors)
    return f"""(! (match phi (
{cases}
        )) :input (model state depth) :output (result))"""


def constraint_for(constraint: Constraint, case: Case) -> str:
    model_id_by_name = {model.name: idx for idx, model in enumerate(case.models)}
    model_id = model_id_by_name[constraint.model]
    model = case.models[model_id]
    result = "true" if constraint.expected else "false"
    return f"(constraint (Start.Sem phi {model_id} {model.initial} {model.depth_bound} {result}))"


def emit_case(case: Case) -> str:
    constructors = "\n            ".join(constructor_decl(name) for name in case.constructors)
    constraints = "\n".join(constraint_for(constraint, case) for constraint in case.constraints)
    model_summary = ", ".join(f"{idx}:{model.name}[{len(model.states)}]" for idx, model in enumerate(case.models))
    header = [
        f";; CTL_{case.index:04d}",
        f";; source: {case.source}",
        f";; theory: {case.theory}",
        f";; models: {model_summary}",
        f";; constraints: {len(case.constraints)}, total_states: {case.total_states}, max_depth: {case.max_depth}",
        "",
        ";; (set-info :format-version \"2.2.0\")",
        ";; (set-info :author \"Chentian Wu\")",
        "",
    ]
    return "\n".join(header) + f"""(declare-term-types
    ((Start 0) (CTL 0))
    (
        (($eval CTL))
        (
            {constructors}
        )
    )
)

(define-funs-rec
    (
        (Start.Sem ((t Start) (model Int) (state Int) (depth Int) (result Bool)) Bool)
        (CTL.Sem ((phi CTL) (model Int) (state Int) (depth Int) (result Bool)) Bool)
    )
    (
        {start_sem()}
        {ctl_sem(case)}
    )
)

(synth-fun phi () Start)

{constraints}
(check-synth)
"""


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", type=Path, default=OUT)
    parser.add_argument("--start", type=int, default=1)
    parser.add_argument("--end", type=int, default=None)
    parser.add_argument("--indices", type=str, default=None, help="comma-separated CTL case numbers")
    parser.add_argument("--max-total-states", type=int, default=None)
    args = parser.parse_args()

    indices = sorted(int(path.stem) for path in CTL.glob("[0-9][0-9][0-9][0-9].sl"))
    if args.indices is not None:
        selected = sorted({int(index.strip()) for index in args.indices.split(",") if index.strip()})
        missing = [index for index in selected if index not in indices]
        if missing:
            raise SystemExit(f"unknown CTL files selected: {', '.join(f'{index:04d}' for index in missing)}")
    elif args.end is None:
        selected = [index for index in indices if index >= args.start]
    else:
        selected = [index for index in indices if args.start <= index <= args.end]
    if not selected:
        raise SystemExit("no CTL files selected")

    args.out.mkdir(parents=True, exist_ok=True)
    manifest: list[str] = []
    skipped: list[str] = []
    for index in selected:
        case = parse_case(index)
        if args.max_total_states is not None and case.total_states > args.max_total_states:
            skipped.append(f"{index:04d}.sl\ttotal_states={case.total_states}")
            continue
        output = emit_case(case)
        out_path = args.out / f"{index:04d}.sl"
        out_path.write_text(output)
        manifest.append(
            "\t".join(
                [
                    f"{index:04d}.sl",
                    f"theory={case.theory}",
                    f"models={len(case.models)}",
                    f"states={case.total_states}",
                    f"constraints={len(case.constraints)}",
                    case.source,
                ]
            )
        )
        print(manifest[-1])
    (args.out / "MANIFEST.txt").write_text("\n".join(manifest) + ("\n" if manifest else ""))
    if skipped:
        (args.out / "SKIPPED.txt").write_text("\n".join(skipped) + "\n")
    else:
        (args.out / "SKIPPED.txt").unlink(missing_ok=True)


if __name__ == "__main__":
    main()
