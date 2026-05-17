(require "theories/111.sl")
(require "models/111.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_111_P1 0 (size (Pos so_111_P1)))))
(constraint (RegLan.Sem r (ReAsp so_111_P2 0 (size (Pos so_111_P2)))))
(constraint (RegLan.Sem r (ReAsp so_111_P3 0 (size (Pos so_111_P3)))))
(constraint (RegLan.Sem r (ReAsp so_111_P4 0 (size (Pos so_111_P4)))))
(constraint (RegLan.Sem r (ReAsp so_111_P5 0 (size (Pos so_111_P5)))))
(constraint (not (RegLan.Sem r (ReAsp so_111_N1 0 (size (Pos so_111_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_111_N2 0 (size (Pos so_111_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_111_N3 0 (size (Pos so_111_N3))))))

(check-synth)
