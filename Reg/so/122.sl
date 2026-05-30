(require "theories/122.sl")
(require "models/122.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_122_P1 0 (size (Pos so_122_P1)))))
(constraint (not (RegLan.Sem r (ReAsp so_122_N1 0 (size (Pos so_122_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_122_N2 0 (size (Pos so_122_N2))))))

(check-synth)
