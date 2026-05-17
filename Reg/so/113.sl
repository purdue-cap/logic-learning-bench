(require "theories/113.sl")
(require "models/113.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_113_P1 0 (size (Pos so_113_P1)))))
(constraint (not (RegLan.Sem r (ReAsp so_113_N1 0 (size (Pos so_113_N1))))))

(check-synth)
