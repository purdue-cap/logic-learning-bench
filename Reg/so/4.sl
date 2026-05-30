(require "theories/4.sl")
(require "models/4.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_4_P1 0 (size (Pos so_4_P1)))))
(constraint (RegLan.Sem r (ReAsp so_4_P2 0 (size (Pos so_4_P2)))))
(constraint (not (RegLan.Sem r (ReAsp so_4_N1 0 (size (Pos so_4_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_4_N2 0 (size (Pos so_4_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_4_N3 0 (size (Pos so_4_N3))))))
(constraint (not (RegLan.Sem r (ReAsp so_4_N4 0 (size (Pos so_4_N4))))))
(constraint (not (RegLan.Sem r (ReAsp so_4_N5 0 (size (Pos so_4_N5))))))

(check-synth)
