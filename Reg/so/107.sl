(require "theories/107.sl")
(require "models/107.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_107_P1 0 (size (Pos so_107_P1)))))
(constraint (RegLan.Sem r (ReAsp so_107_P2 0 (size (Pos so_107_P2)))))
(constraint (RegLan.Sem r (ReAsp so_107_P3 0 (size (Pos so_107_P3)))))
(constraint (RegLan.Sem r (ReAsp so_107_P4 0 (size (Pos so_107_P4)))))
(constraint (RegLan.Sem r (ReAsp so_107_P5 0 (size (Pos so_107_P5)))))
(constraint (RegLan.Sem r (ReAsp so_107_P6 0 (size (Pos so_107_P6)))))
(constraint (not (RegLan.Sem r (ReAsp so_107_N1 0 (size (Pos so_107_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_107_N2 0 (size (Pos so_107_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_107_N3 0 (size (Pos so_107_N3))))))

(check-synth)
