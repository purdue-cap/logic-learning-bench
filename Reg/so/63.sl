(require "theories/63.sl")
(require "models/63.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_63_P1 0 (size (Pos so_63_P1)))))
(constraint (RegLan.Sem r (ReAsp so_63_P2 0 (size (Pos so_63_P2)))))
(constraint (RegLan.Sem r (ReAsp so_63_P3 0 (size (Pos so_63_P3)))))
(constraint (RegLan.Sem r (ReAsp so_63_P4 0 (size (Pos so_63_P4)))))
(constraint (not (RegLan.Sem r (ReAsp so_63_N1 0 (size (Pos so_63_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_63_N2 0 (size (Pos so_63_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_63_N3 0 (size (Pos so_63_N3))))))

(check-synth)
