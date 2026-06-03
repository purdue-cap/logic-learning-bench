# CTL Benchmark

2107 instances from [learnctl](http://arxiv.org/abs/2402.06366) (Music & Cimatti, 2024).

## Structure

```
CTL/
  kst/              golden Kripke structures (8 originals + 44 mutants)
  kst/mutants/      mutant Kripke structures
  models/           delis .sl model files (converted from kst)
  theories/         CTL theory files (grammar variants)
  0001.sl–2107.sl   problem instances (LFS-tracked)
```

## Instance naming

Each instance is a separation problem: find a CTL formula satisfied by the
positive Kripke structure but not the negative one(s). The source label in
`set-info :source` encodes the original combination:

```
learnctl — {protocol}--{mutants}--{grammar}
```

- **protocol**: goat, medium, small, squared, squared31, peterson, peterson2, zune
- **mutants**: one or more mutant models (joined by `__`)
- **grammar**: operator fragment + mode suffix

## Grammar variants (9 total)

| Suffix   | Operators                         | Depth mode |
|----------|-----------------------------------|------------|
| all      | AG, AF, AX, AU, not, and, or      | default    |
| all-E    | AG, AF, AX, AU, and, or (negated atoms) | default |
| all-R    | AG, AF, AX, AU, not, and, or      | release    |
| until    | EX, EG, EU, not, or               | default    |
| until-E  | EX, EG, EU, or (negated atoms)    | default    |
| until-R  | EX, EG, EU, not, or               | release    |
| full     | AX, EX, AF, EF, AG, EG, AU, EU, not, and, or | default |
| full-E   | AX, EX, AF, EF, AG, EG, AU, EU, and, or (negated atoms) | default |
| full-R   | AX, EX, AF, EF, AG, EG, AU, EU, not, and, or | release |

The "release" mode (`-R`) uses different (typically larger) depth bounds in
the bounded CTL semantics, affecting the search space.

## Kripke structure source

The 52 `.kst` files come from the learnctl paper's benchmarks:

- **goat**: Fox-goose-beans river crossing (64 states, 5 mutants)
- **medium**: Medium-size random model (12 states, 10 mutants)
- **small**: Small random model (7 states, 10 mutants)
- **squared/squared31**: Squaring computation (4–5 states, 3 mutants each)
- **peterson/peterson2**: Peterson's mutual exclusion (48–79 states, 6 mutants each)
- **zune**: Zune date bug (16 states, 1 mutant)
