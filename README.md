# Loom Benchmark Suite

This directory contains the benchmark problems used to evaluate **Loom** in the paper
*"Efficient Meta-Synthesis for Finite-Aspect Checkable Languages"* (Wu & Qiu 2027).
Each family corresponds to a representative finite-aspect concept (FAC) language;
the Loom DSL descriptions live in the `theories/` subdirectories.

## Families

| Directory | Language | Instances | Origin |
|---|---|---|---|
| `Reg/` | Regular expressions over `{0,1}` | 57 | 25 from the AlphaRegex suite, 25 manually generated from Sipser Ch. 1 exercises, 7 from Tomita (1982) |
| `Reg+/` | General regular expressions | 322 | Regel corpus: 200 from Deepregex and 122 StackOverflow regex questions collected by Regel |
| `LTL/` | Linear Temporal Logic | 802 | Synthetic benchmark suite distributed with SamplesToLTL |
| `CTL/` | Computation Tree Logic | 2,107 | LearnCTL benchmark suite |
| `FO/` | First-order logic with two variables (FO²) | 306 | Derived from the FOLseparators artifact (Ivy verification conjectures, e.g., Paxos and Raft) |
| `String/` | SyGuS string transformations (SLIA) | 354 | Microsoft PROSE FlashFill benchmark suite |
| `CFG/` | Context-free grammars | 70 | Context-free languages inspired by Sipser Ch. 2 |

## File layout

* `0001.sl`, `0002.sl`, … — Loom input files in SyGuS-IF extended with aspects.
* `theories/` — Loom DSL descriptions (`*.sl`) that define the aspect space, semantics, and grammar for the family.
* Other subdirectories (`sygus/`, `semgus/`, `txt/`, `trace/`, `fol/`, `kst/`, etc.) contain alternative encodings used to run the comparison tools reported in the paper.

## Running a benchmark

From the repository root:

```sh
cargo run --release -- benchmark/Reg/0001.sl
```

## References

* AlphaRegex: `alpharegex`
* Regel: `regel`
* Deepregex: `deepregex`
* SamplesToLTL: `samples2ltl`
* LearnCTL: `learnctl`
* FOLseparators: `folseparators`
* FlashFill: `flashfill`
* ASPforCFG: `asp4cfg`
* Sipser, M. *Introduction to the Theory of Computation*, Chapters 1 & 2.
