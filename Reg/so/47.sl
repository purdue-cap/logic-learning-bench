(require "theories/47.sl")
(require "models/47.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_47_P1 0 (size (Pos so_47_P1)))))
(constraint (RegLan.Sem r (ReAsp so_47_P2 0 (size (Pos so_47_P2)))))
(constraint (RegLan.Sem r (ReAsp so_47_P3 0 (size (Pos so_47_P3)))))
(constraint (RegLan.Sem r (ReAsp so_47_P4 0 (size (Pos so_47_P4)))))
(constraint (not (RegLan.Sem r (ReAsp so_47_N1 0 (size (Pos so_47_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_47_N2 0 (size (Pos so_47_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_47_N3 0 (size (Pos so_47_N3))))))

(check-synth)
