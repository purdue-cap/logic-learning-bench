(require "theories/114.sl")
(require "models/114.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_114_P1 0 (size (Pos so_114_P1)))))
(constraint (RegLan.Sem r (ReAsp so_114_P2 0 (size (Pos so_114_P2)))))
(constraint (RegLan.Sem r (ReAsp so_114_P3 0 (size (Pos so_114_P3)))))
(constraint (not (RegLan.Sem r (ReAsp so_114_N1 0 (size (Pos so_114_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_114_N2 0 (size (Pos so_114_N2))))))

(check-synth)
