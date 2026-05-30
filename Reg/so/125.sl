(require "theories/125.sl")
(require "models/125.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_125_P1 0 (size (Pos so_125_P1)))))
(constraint (not (RegLan.Sem r (ReAsp so_125_N1 0 (size (Pos so_125_N1))))))

(check-synth)
