(require "theories/35.sl")
(require "models/35.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_35_P1 0 (size (Pos so_35_P1)))))
(constraint (RegLan.Sem r (ReAsp so_35_P2 0 (size (Pos so_35_P2)))))
(constraint (RegLan.Sem r (ReAsp so_35_P3 0 (size (Pos so_35_P3)))))
(constraint (not (RegLan.Sem r (ReAsp so_35_N1 0 (size (Pos so_35_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_35_N2 0 (size (Pos so_35_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_35_N3 0 (size (Pos so_35_N3))))))
(constraint (not (RegLan.Sem r (ReAsp so_35_N4 0 (size (Pos so_35_N4))))))

(check-synth)
