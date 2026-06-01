(require "theories/72.sl")
(require "models/72.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_72_P1 0 (size (Pos so_72_P1)))))
(constraint (not (RegLan.Sem r (ReAsp so_72_N1 0 (size (Pos so_72_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_72_N2 0 (size (Pos so_72_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_72_N3 0 (size (Pos so_72_N3))))))
(constraint (not (RegLan.Sem r (ReAsp so_72_N4 0 (size (Pos so_72_N4))))))

(check-synth)
