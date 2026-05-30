(require "theories/37.sl")
(require "models/37.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_37_P1 0 (size (Pos so_37_P1)))))
(constraint (RegLan.Sem r (ReAsp so_37_P2 0 (size (Pos so_37_P2)))))
(constraint (RegLan.Sem r (ReAsp so_37_P3 0 (size (Pos so_37_P3)))))
(constraint (RegLan.Sem r (ReAsp so_37_P4 0 (size (Pos so_37_P4)))))
(constraint (RegLan.Sem r (ReAsp so_37_P5 0 (size (Pos so_37_P5)))))
(constraint (not (RegLan.Sem r (ReAsp so_37_N1 0 (size (Pos so_37_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_37_N2 0 (size (Pos so_37_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_37_N3 0 (size (Pos so_37_N3))))))
(constraint (not (RegLan.Sem r (ReAsp so_37_N4 0 (size (Pos so_37_N4))))))

(check-synth)
