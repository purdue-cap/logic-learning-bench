(require "theories/21.sl")
(require "models/21.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_21_P1 0 (size (Pos so_21_P1)))))
(constraint (RegLan.Sem r (ReAsp so_21_P2 0 (size (Pos so_21_P2)))))
(constraint (RegLan.Sem r (ReAsp so_21_P3 0 (size (Pos so_21_P3)))))
(constraint (RegLan.Sem r (ReAsp so_21_P4 0 (size (Pos so_21_P4)))))
(constraint (RegLan.Sem r (ReAsp so_21_P5 0 (size (Pos so_21_P5)))))
(constraint (RegLan.Sem r (ReAsp so_21_P6 0 (size (Pos so_21_P6)))))
(constraint (RegLan.Sem r (ReAsp so_21_P7 0 (size (Pos so_21_P7)))))
(constraint (not (RegLan.Sem r (ReAsp so_21_N1 0 (size (Pos so_21_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_21_N2 0 (size (Pos so_21_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_21_N3 0 (size (Pos so_21_N3))))))

(check-synth)
