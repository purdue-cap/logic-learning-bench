(require "theories/26.sl")
(require "models/26.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_26_P1 0 (size (Pos so_26_P1)))))
(constraint (RegLan.Sem r (ReAsp so_26_P2 0 (size (Pos so_26_P2)))))
(constraint (not (RegLan.Sem r (ReAsp so_26_N1 0 (size (Pos so_26_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_26_N2 0 (size (Pos so_26_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_26_N3 0 (size (Pos so_26_N3))))))

(check-synth)
