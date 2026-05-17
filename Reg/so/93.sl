(require "theories/93.sl")
(require "models/93.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_93_P1 0 (size (Pos so_93_P1)))))
(constraint (RegLan.Sem r (ReAsp so_93_P2 0 (size (Pos so_93_P2)))))
(constraint (not (RegLan.Sem r (ReAsp so_93_N1 0 (size (Pos so_93_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_93_N2 0 (size (Pos so_93_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_93_N3 0 (size (Pos so_93_N3))))))

(check-synth)
