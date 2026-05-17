(require "theories/112.sl")
(require "models/112.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_112_P1 0 (size (Pos so_112_P1)))))
(constraint (RegLan.Sem r (ReAsp so_112_P2 0 (size (Pos so_112_P2)))))
(constraint (not (RegLan.Sem r (ReAsp so_112_N1 0 (size (Pos so_112_N1))))))

(check-synth)
