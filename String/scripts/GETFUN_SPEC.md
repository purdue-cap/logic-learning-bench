# `get-fun` evaluation spec (term-synthesis constraints in delis)

## Purpose

Add a single, model-explicit reader of a structure's interpretation so delis
can express the term-synthesis check `⟦t⟧_M = out^M` (Krogmeier–Madhusudan
Problem 3) without ad-hoc per-benchmark `OutEq` relations and without naming
domain elements in bodies.

`get-fun` is the read-side mirror of `interp-fun`:
- `interp-fun f (...)` DEFINES `f^M` inside `(define-model M ...)`.
- `(get-fun f M)` READS `f^M` from anywhere (constraint or body).

No grammar changes: semantic bodies parse as free-form `DelisSExprBody`, and
constraint bodies parse as `SyGuSTerm` applications — `(get-fun f M)` and
`((get-fun f M) a ...)` already parse. This spec is purely evaluation.

## Surface forms

```
(get-fun FUNC MODEL)              ; FUNC^MODEL, a value (element). 0-ary use.
((get-fun FUNC MODEL) a1 ... ak)  ; apply FUNC^MODEL to args; k = arity(FUNC).
```

- `FUNC`  : a symbol naming a function declared via `(declare-fun FUNC (S1..Sk) S)`.
- `MODEL` : a symbol naming a `(define-model MODEL ...)`.
- `ai`    : value expressions. Per the element-naming discipline each `ai` must
            itself be a value-producing expression (another `get-fun`, a bound
            variable, or a relation result) — NEVER a bare universe element.

Return type: the declared return sort `S` of `FUNC` (a domain element of `M`).

## Evaluation (`eval_value` in src/compile/eval_ctx.rs)

Add a case BEFORE the generic application handling:

```
expr = (op head ...):
  case A — bare 0-ary read:  (get-fun FUNC MODEL)
    1. op == "get-fun", exactly 2 args: FUNC (symbol), MODEL (symbol).
    2. m   = models.get(MODEL)            else Err("unknown model MODEL")
    3. sig = func_sigs.get(FUNC)          else Err("unknown function FUNC")
    4. require sig.arg_sorts.is_empty()   else Err("FUNC needs k args; apply it")
    5. v = eval_model_symbols(m, FUNC, [])  else Err("M has no value for FUNC")
    6. return interped_aspect_value(sig.ret_sort, v)   ; a domain element

  case B — application of a get-fun:  ((get-fun FUNC MODEL) a1 ... ak)
    head itself is (get-fun FUNC MODEL):
    1. resolve m, sig as above.
    2. require sig.arg_sorts.len() == k   else arity Err.
    3. for each ai: eval_value(ai, env)  → element name string  (recursion;
       ai must resolve to a concrete element — get-fun/bound var).
    4. v = eval_model_symbols(m, FUNC, [a1..ak])  else Err("no value")
    5. return interped_aspect_value(sig.ret_sort, v)
```

Key property: **MODEL is explicit**, so `get-fun` does NOT consult
`current_model`/the ambient aspect. This structurally avoids the hidden-model
cache bug (no reliance on env to supply the structure).

### Cache key

`eval_value` results flow through `memo_env_key`. Because `get-fun` names its
model explicitly, the model is part of the expression, not the env — but to be
safe the memo key already includes the current model (fix A). `get-fun`'s value
depends only on (FUNC, MODEL, arg-values), all syntactic, so caching is sound.

## Boolean / Idx contexts

`eval_bool_value` and `eval_int_expr` (the bisim-walk variants) and the
compiler's `eval_finite_eq` reach values through `eval_value` /
`cached_eval_value`. Once `eval_value` handles `get-fun`, those inherit it.
`eval_finite_eq` already special-cases "if `cached_eval_value` succeeds, compare
to target" (compiler.rs:1264) — a `get-fun` value flows straight through there.

## The term-synthesis constraint

Goal: `⟦phi⟧_M = out^M`, expressed with the value-semantics relation `Str.Len`
/ `Str.Char` (which already one-hot encode `⟦phi⟧`) on the LHS and `get-fun` on
the RHS.

Length:
```
(constraint (= (Str.Len phi (Asp M0)) (get-fun out.len M0)))
```
Per position k (k a declared idx constant read via get-fun):
```
(constraint (= (Str.Char phi (CharAsp M0 (get-fun idx.K M0)))
               ((get-fun out.chr M0) (get-fun idx.K M0))))
```

Lowering (top-level `=`, compiler.rs `eval_equality`):
- LHS `(Str.Len phi (Asp M0))`: existing path — a value-semantics call on the
  synth target → one-hot bits of phi projected via `semantic_term_bit`.
- RHS `(get-fun out.len M0)`: NEW — resolves to a concrete element `e`.
- `eval_equality` already handles "one side is a value, other is a
  value-semantics call": it calls `eval_finite_eq(lhs, e)` which emits the
  single bit `Sem(phi, Asp M0) @ value=e`. So `= ` with a `get-fun` RHS Just
  Works once `eval_value` returns the element.

Why it failed before: bare `out` had no model, so `eval_value(out)` errored
("cannot infer finite sort"). `(get-fun out.len M0)` supplies the model → the
element resolves → equality lowers.

## What does NOT change

- `define-semantics` signatures still take an aspect (language rule); aspects
  remain the carrier of model + position for relation calls. `get-fun` is only
  for reading interpreted functions, not for calling relations.
- Existing Bool/membership theories: they contain no `get-fun`, so untouched.
- Sort→BV, bisim, caches, closure/sygus backends: unchanged.

## Validation kernel (f(x)=x++x, "a"->"aa", "b"->"bb")

Write the kernel using `get-fun` for every model read (in.len, in.chr, out.len,
out.chr, idx constants, plus/minus/lt). Expect: compiles, and either solves to
`str.++ str.arg0 str.arg0` or yields a valid SyGuS problem cvc5 solves.
(Solving speed is not the bar; correct compile + correct semantics is.)

## Open points to confirm before coding

1. Naming of accessor functions: `out.len`/`out.chr`/`in.len`/`in.chr` are
   ordinary declared functions; `get-fun` treats them uniformly. OK?
2. Should bare model-function calls in EXISTING bodies (e.g. `(arg0.chr (k asp))`
   in current working kernels) be migrated to `get-fun`, or left as-is and
   `get-fun` only added as the new accessor? (Additive vs. full migration.)
3. `idx.K` constants accessed as `(get-fun idx.K M0)` everywhere — confirms the
   "no bare elements, ever" discipline, at the cost of verbosity. Acceptable?
