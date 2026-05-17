(require "theories/71.sl")
(require "models/71.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_71_P1 0 (size (Pos so_71_P1)))))
(constraint (RegLan.Sem r (ReAsp so_71_P2 0 (size (Pos so_71_P2)))))
(constraint (RegLan.Sem r (ReAsp so_71_P3 0 (size (Pos so_71_P3)))))
(constraint (not (RegLan.Sem r (ReAsp so_71_N1 0 (size (Pos so_71_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_71_N2 0 (size (Pos so_71_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_71_N3 0 (size (Pos so_71_N3))))))

(check-synth)
