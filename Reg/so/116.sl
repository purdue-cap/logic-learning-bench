(require "theories/116.sl")
(require "models/116.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_116_P1 0 (size (Pos so_116_P1)))))
(constraint (RegLan.Sem r (ReAsp so_116_P2 0 (size (Pos so_116_P2)))))
(constraint (RegLan.Sem r (ReAsp so_116_P3 0 (size (Pos so_116_P3)))))
(constraint (RegLan.Sem r (ReAsp so_116_P4 0 (size (Pos so_116_P4)))))
(constraint (not (RegLan.Sem r (ReAsp so_116_N1 0 (size (Pos so_116_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_116_N2 0 (size (Pos so_116_N2))))))

(check-synth)
