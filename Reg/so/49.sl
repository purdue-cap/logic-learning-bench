(require "theories/49.sl")
(require "models/49.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_49_P1 0 (size (Pos so_49_P1)))))
(constraint (RegLan.Sem r (ReAsp so_49_P2 0 (size (Pos so_49_P2)))))
(constraint (RegLan.Sem r (ReAsp so_49_P3 0 (size (Pos so_49_P3)))))
(constraint (not (RegLan.Sem r (ReAsp so_49_N1 0 (size (Pos so_49_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_49_N2 0 (size (Pos so_49_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_49_N3 0 (size (Pos so_49_N3))))))
(constraint (not (RegLan.Sem r (ReAsp so_49_N4 0 (size (Pos so_49_N4))))))

(check-synth)
