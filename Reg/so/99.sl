(require "theories/99.sl")
(require "models/99.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_99_P1 0 (size (Pos so_99_P1)))))
(constraint (RegLan.Sem r (ReAsp so_99_P2 0 (size (Pos so_99_P2)))))
(constraint (RegLan.Sem r (ReAsp so_99_P3 0 (size (Pos so_99_P3)))))
(constraint (not (RegLan.Sem r (ReAsp so_99_N1 0 (size (Pos so_99_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_99_N2 0 (size (Pos so_99_N2))))))

(check-synth)
