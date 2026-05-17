(require "theories/123.sl")
(require "models/123.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_123_P1 0 (size (Pos so_123_P1)))))
(constraint (RegLan.Sem r (ReAsp so_123_P2 0 (size (Pos so_123_P2)))))
(constraint (not (RegLan.Sem r (ReAsp so_123_N1 0 (size (Pos so_123_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_123_N2 0 (size (Pos so_123_N2))))))

(check-synth)
