(require "theories/108.sl")
(require "models/108.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_108_P1 0 (size (Pos so_108_P1)))))
(constraint (not (RegLan.Sem r (ReAsp so_108_N1 0 (size (Pos so_108_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_108_N2 0 (size (Pos so_108_N2))))))

(check-synth)
