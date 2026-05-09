(require "theories/68.sl")
(require "models/68.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_68_P1 0 (size (Pos so_68_P1)))))
(constraint (RegLan.Sem r (ReAsp so_68_P2 0 (size (Pos so_68_P2)))))
(constraint (not (RegLan.Sem r (ReAsp so_68_N1 0 (size (Pos so_68_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_68_N2 0 (size (Pos so_68_N2))))))

(check-synth)
