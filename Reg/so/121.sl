(require "theories/121.sl")
(require "models/121.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_121_P1 0 (size (Pos so_121_P1)))))
(constraint (RegLan.Sem r (ReAsp so_121_P2 0 (size (Pos so_121_P2)))))
(constraint (not (RegLan.Sem r (ReAsp so_121_N1 0 (size (Pos so_121_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_121_N2 0 (size (Pos so_121_N2))))))

(check-synth)
