(require "theories/82.sl")
(require "models/82.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_82_P1 0 (size (Pos so_82_P1)))))
(constraint (RegLan.Sem r (ReAsp so_82_P2 0 (size (Pos so_82_P2)))))
(constraint (RegLan.Sem r (ReAsp so_82_P3 0 (size (Pos so_82_P3)))))
(constraint (RegLan.Sem r (ReAsp so_82_P4 0 (size (Pos so_82_P4)))))
(constraint (not (RegLan.Sem r (ReAsp so_82_N1 0 (size (Pos so_82_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_82_N2 0 (size (Pos so_82_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_82_N3 0 (size (Pos so_82_N3))))))

(check-synth)
