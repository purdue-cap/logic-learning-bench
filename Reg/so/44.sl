(require "theories/44.sl")
(require "models/44.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_44_P1 0 (size (Pos so_44_P1)))))
(constraint (RegLan.Sem r (ReAsp so_44_P2 0 (size (Pos so_44_P2)))))
(constraint (RegLan.Sem r (ReAsp so_44_P3 0 (size (Pos so_44_P3)))))
(constraint (RegLan.Sem r (ReAsp so_44_P4 0 (size (Pos so_44_P4)))))
(constraint (RegLan.Sem r (ReAsp so_44_P5 0 (size (Pos so_44_P5)))))
(constraint (not (RegLan.Sem r (ReAsp so_44_N1 0 (size (Pos so_44_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_44_N2 0 (size (Pos so_44_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_44_N3 0 (size (Pos so_44_N3))))))

(check-synth)
