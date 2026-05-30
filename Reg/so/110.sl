(require "theories/110.sl")
(require "models/110.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_110_P1 0 (size (Pos so_110_P1)))))
(constraint (RegLan.Sem r (ReAsp so_110_P2 0 (size (Pos so_110_P2)))))
(constraint (RegLan.Sem r (ReAsp so_110_P3 0 (size (Pos so_110_P3)))))
(constraint (not (RegLan.Sem r (ReAsp so_110_N1 0 (size (Pos so_110_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_110_N2 0 (size (Pos so_110_N2))))))

(check-synth)
