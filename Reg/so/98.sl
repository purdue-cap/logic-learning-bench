(require "theories/98.sl")
(require "models/98.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_98_P1 0 (size (Pos so_98_P1)))))
(constraint (RegLan.Sem r (ReAsp so_98_P2 0 (size (Pos so_98_P2)))))
(constraint (RegLan.Sem r (ReAsp so_98_P3 0 (size (Pos so_98_P3)))))
(constraint (not (RegLan.Sem r (ReAsp so_98_N1 0 (size (Pos so_98_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_98_N2 0 (size (Pos so_98_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_98_N3 0 (size (Pos so_98_N3))))))
(constraint (not (RegLan.Sem r (ReAsp so_98_N4 0 (size (Pos so_98_N4))))))
(constraint (not (RegLan.Sem r (ReAsp so_98_N5 0 (size (Pos so_98_N5))))))

(check-synth)
