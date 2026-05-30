(require "theories/43.sl")
(require "models/43.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_43_P1 0 (size (Pos so_43_P1)))))
(constraint (RegLan.Sem r (ReAsp so_43_P2 0 (size (Pos so_43_P2)))))
(constraint (RegLan.Sem r (ReAsp so_43_P3 0 (size (Pos so_43_P3)))))
(constraint (not (RegLan.Sem r (ReAsp so_43_N1 0 (size (Pos so_43_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_43_N2 0 (size (Pos so_43_N2))))))

(check-synth)
