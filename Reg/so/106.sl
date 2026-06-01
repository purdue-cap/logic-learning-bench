(require "theories/106.sl")
(require "models/106.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_106_P1 0 (size (Pos so_106_P1)))))
(constraint (RegLan.Sem r (ReAsp so_106_P2 0 (size (Pos so_106_P2)))))
(constraint (RegLan.Sem r (ReAsp so_106_P3 0 (size (Pos so_106_P3)))))
(constraint (RegLan.Sem r (ReAsp so_106_P4 0 (size (Pos so_106_P4)))))
(constraint (not (RegLan.Sem r (ReAsp so_106_N1 0 (size (Pos so_106_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_106_N2 0 (size (Pos so_106_N2))))))

(check-synth)
