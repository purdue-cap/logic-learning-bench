(require "theories/73.sl")
(require "models/73.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_73_P1 0 (size (Pos so_73_P1)))))
(constraint (RegLan.Sem r (ReAsp so_73_P2 0 (size (Pos so_73_P2)))))
(constraint (RegLan.Sem r (ReAsp so_73_P3 0 (size (Pos so_73_P3)))))
(constraint (RegLan.Sem r (ReAsp so_73_P4 0 (size (Pos so_73_P4)))))
(constraint (not (RegLan.Sem r (ReAsp so_73_N1 0 (size (Pos so_73_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_73_N2 0 (size (Pos so_73_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_73_N3 0 (size (Pos so_73_N3))))))
(constraint (not (RegLan.Sem r (ReAsp so_73_N4 0 (size (Pos so_73_N4))))))
(constraint (not (RegLan.Sem r (ReAsp so_73_N5 0 (size (Pos so_73_N5))))))

(check-synth)
