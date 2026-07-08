# FO Benchmark Reproducibility Notes

This directory contains a reproducible fixed-model first-order separator
benchmark generated from FOLseparators' native depth-2 CEGIS workflow and
installed as Delis `FO2` inputs.

## Model Provenance

- FOLseparators generation depth: `--max-depth 2`
- Delis grammar level: `FO2`
- timeout: `600s` per instance

FOLseparators' `--max-depth` is a bound on quantifier occurrences in
the learned prenex formula. Delis `FO2` is not the same bound; it is the
two-variable generated grammar level and can reuse/shadow variable names, so a
Delis `FO2` solution may contain more than two quantifier occurrences.

Therefore FOLseparators `--max-depth 2` versus Delis `FO2` is not a strict
apples-to-apples quantifier-count comparison. The installed files should be
treated as a fixed-model corpus with documented depth-2 CEGIS provenance.

## Main Comparison

- Delis input suite: `NNNN.sl`
- Delis executable: release binary, `target/release/delis`
- FOLseparators input suite: `fol/NNNN.fol`
- FOLseparators mode: `--separate --max-depth 2 --timeout 600` via the
  delis-bench wrapper default.

From `delis-bench`, use:

```bash
./target/release/delis-bench run manifests/fo-delis.toml --jobs 1 --fresh
./target/release/delis-bench run manifests/fo-folseparators-default.toml --jobs 1 --fresh
```

If `target/release/delis-bench` is not built, build it first with:

```bash
cargo build --release
```

The installed suite is dense and aligned: `NNNN.sl` and `fol/NNNN.fol` refer
to the same positive and negative finite structures. Delis model definitions
are embedded directly in `NNNN.sl`.

## Model Provenance For Rebuilds

The rebuild generates `.fol` model sets by FOLseparators' native
counterexample-guided learning workflow, not by a separate bounded sampler. For
each source conjecture, it runs the PLDI 2020 artifact command:

```bash
python3.7 -u -m separators --max-depth 2 --timeout 600 SOURCE.fol
```

The run is intentionally **not** passed `--separate`: native learning checks
candidate separators against the conjecture and prints each counterexample as a
`New model is:` block. The rebuild captures those blocks, relabels `+` models
as `P*` and `-` models as `N*`, and freezes them into `fol/NNNN.fol`. The
fixed-model comparison then runs both tools on those frozen models.

## Rebuild

From `delis/benchmark/FO`, rebuild the raw corpus, regenerate Delis files, and
replace the installed suite with one command:

```bash
python3 ../scripts/rebuild_fo_k2.py
```

For a fast reinstall from an already generated work directory:

```bash
python3 ../scripts/rebuild_fo_k2.py --skip-generate --work-dir /private/tmp/delis-fo-generated-k2
```

The rebuild does the following:

- regenerates a temporary work corpus from native FOLseparators CEGIS runs in the PLDI 2020 Docker image
- derives Delis `FO2` theories from every generated `.fol` signature
- converts all generated fixed-model tasks to self-contained Delis `.sl`
- replaces root `NNNN.sl`, `fol/`, and `theories/`
- removes stale `FO0/`, `FO1/`, `FO2/`, and `FO3/`

## Installed Layout

- `fol/NNNN.fol`
  FOLseparators fixed-model task.
- `NNNN.sl`
  Delis task over the same model set, including inline `define-model` blocks.
- `theories/*.sl`
  Generated Delis `FO2` theories, deduplicated by `.fol` signature, including
  inline signature declarations.
- `manifest.jsonl`
  Mapping from installed dense ids to raw generated ids and provenance.

The installed suite is dense; its exact size is the number of source
conjectures whose native CEGIS run produced at least one positive and one
negative model.

The full generated work corpus is intentionally not kept inside `FO/`. The
rebuild script writes it to `--work-dir` and installs all generated fixed-model
tasks. The 14 historical vertical Paxos extension files live under
`benchmark/scripts/fo_vertical_paxos/` and can be appended only with
`--include-vertical-extension`; they are not part of the default native CEGIS
model provenance.

## Commands

Run Delis from the `delis` repository root:

```bash
target/release/delis benchmark/FO/0001.sl
```

Run FOLseparators from this `FO/` directory:

```bash
docker run --rm --platform linux/amd64 \
  -v "$PWD/fol/0001.fol:/input.fol:ro" \
  560:latest \
  /bin/bash -lc 'cd /root/folseparators && python3.7 -m separators --separate --timeout 600 /input.fol'
```

The `--separate` flag is required. Without it, FOLseparators runs its full
counterexample-guided learning loop and generates models from the conjecture,
which is not the fixed-model comparison used here.

## Reporting

For the main table, report results over all installed dense ids using:

- Delis: `NNNN.sl`
- FOLseparators: `fol/NNNN.fol` with `--separate --max-depth 2 --timeout 600`

Record solved/error/timeout status, wall-clock time, and the number of
quantifiers in the FOLseparators result when it succeeds.
