(require "theories/17.sl")
(require "models/17.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_17_P1 0 (size (Pos so_17_P1)))))
(constraint (not (RegLan.Sem r (ReAsp so_17_N1 0 (size (Pos so_17_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_17_N2 0 (size (Pos so_17_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_17_N3 0 (size (Pos so_17_N3))))))

(check-synth)
