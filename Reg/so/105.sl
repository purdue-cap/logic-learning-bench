(require "theories/105.sl")
(require "models/105.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_105_P1 0 (size (Pos so_105_P1)))))
(constraint (RegLan.Sem r (ReAsp so_105_P2 0 (size (Pos so_105_P2)))))
(constraint (RegLan.Sem r (ReAsp so_105_P3 0 (size (Pos so_105_P3)))))
(constraint (not (RegLan.Sem r (ReAsp so_105_N1 0 (size (Pos so_105_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_105_N2 0 (size (Pos so_105_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_105_N3 0 (size (Pos so_105_N3))))))
(constraint (not (RegLan.Sem r (ReAsp so_105_N4 0 (size (Pos so_105_N4))))))
(constraint (not (RegLan.Sem r (ReAsp so_105_N5 0 (size (Pos so_105_N5))))))
(constraint (not (RegLan.Sem r (ReAsp so_105_N6 0 (size (Pos so_105_N6))))))

(check-synth)
