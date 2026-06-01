(require "theories/13.sl")
(require "models/13.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_13_P1 0 (size (Pos so_13_P1)))))
(constraint (RegLan.Sem r (ReAsp so_13_P2 0 (size (Pos so_13_P2)))))
(constraint (RegLan.Sem r (ReAsp so_13_P3 0 (size (Pos so_13_P3)))))
(constraint (RegLan.Sem r (ReAsp so_13_P4 0 (size (Pos so_13_P4)))))
(constraint (RegLan.Sem r (ReAsp so_13_P5 0 (size (Pos so_13_P5)))))
(constraint (not (RegLan.Sem r (ReAsp so_13_N1 0 (size (Pos so_13_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_13_N2 0 (size (Pos so_13_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_13_N3 0 (size (Pos so_13_N3))))))
(constraint (not (RegLan.Sem r (ReAsp so_13_N4 0 (size (Pos so_13_N4))))))

(check-synth)
