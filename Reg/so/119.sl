(require "theories/119.sl")
(require "models/119.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_119_P1 0 (size (Pos so_119_P1)))))
(constraint (not (RegLan.Sem r (ReAsp so_119_N1 0 (size (Pos so_119_N1))))))

(check-synth)
