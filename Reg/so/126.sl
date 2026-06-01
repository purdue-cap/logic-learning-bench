(require "theories/126.sl")
(require "models/126.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_126_P1 0 (size (Pos so_126_P1)))))
(constraint (not (RegLan.Sem r (ReAsp so_126_N1 0 (size (Pos so_126_N1))))))

(check-synth)
