(require "theories/117.sl")
(require "models/117.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (ReAsp so_117_P1 0 (size (Pos so_117_P1)))))
(constraint (RegLan.Sem r (ReAsp so_117_P2 0 (size (Pos so_117_P2)))))
(constraint (RegLan.Sem r (ReAsp so_117_P3 0 (size (Pos so_117_P3)))))
(constraint (not (RegLan.Sem r (ReAsp so_117_N1 0 (size (Pos so_117_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_117_N2 0 (size (Pos so_117_N2))))))

(check-synth)
