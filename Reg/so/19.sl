(require "theories/19.sl")
(require "models/19.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_19_P1 0 (size (Pos so_19_P1)))))
(constraint (RegLan.Sem r (ReAsp so_19_P2 0 (size (Pos so_19_P2)))))
(constraint (RegLan.Sem r (ReAsp so_19_P3 0 (size (Pos so_19_P3)))))
(constraint (not (RegLan.Sem r (ReAsp so_19_N1 0 (size (Pos so_19_N1))))))

(check-synth)
