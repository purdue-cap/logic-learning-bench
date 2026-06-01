(require "theories/23.sl")
(require "models/23.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_23_P1 0 (size (Pos so_23_P1)))))
(constraint (RegLan.Sem r (ReAsp so_23_P2 0 (size (Pos so_23_P2)))))
(constraint (RegLan.Sem r (ReAsp so_23_P3 0 (size (Pos so_23_P3)))))
(constraint (RegLan.Sem r (ReAsp so_23_P4 0 (size (Pos so_23_P4)))))
(constraint (RegLan.Sem r (ReAsp so_23_P5 0 (size (Pos so_23_P5)))))
(constraint (not (RegLan.Sem r (ReAsp so_23_N1 0 (size (Pos so_23_N1))))))

(check-synth)
