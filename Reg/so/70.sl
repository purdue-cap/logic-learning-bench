(require "theories/70.sl")
(require "models/70.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_70_P1 0 (size (Pos so_70_P1)))))
(constraint (RegLan.Sem r (ReAsp so_70_P2 0 (size (Pos so_70_P2)))))
(constraint (not (RegLan.Sem r (ReAsp so_70_N1 0 (size (Pos so_70_N1))))))

(check-synth)
