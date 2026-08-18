# Loom Benchmark Suite

This directory contains the benchmark problems used to evaluate **Loom** in the paper
*"Efficient Meta-Synthesis for Finite-Aspect Checkable Languages"* (Wu & Qiu 2027).
Each family corresponds to a representative finite-aspect concept (FAC) language.

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

## References

* AlphaRegex: [`AlphaRegexPublic`](https://github.com/kupl/AlphaRegexPublic)
* Regel: [`regel`](https://github.com/utopia-group/regel/)
* SamplesToLTL: [`samples2ltl`](https://github.com/ivan-gavran/samples2LTL)
* LearnCTL: [`learnctl`](https://gitlab.lre.epita.fr/adrien/learnctl)
* FOLseparators: [`folseparators`](https://github.com/jrkoenig/folseparators)
* FlashFill: [`flashfill`](https://github.com/microsoft/prose-benchmarks)
* ASPforCFG: [`asp4cfg`](https://gitlab.com/answer-set-programming/asp4cfg)
* Sipser, M. [*Introduction to the Theory of Computation*](https://math.mit.edu/~sipser/book.html), Chapters 1 & 2.
