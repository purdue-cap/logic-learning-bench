(require "theories/28.sl")
(require "models/28.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_28_P1 0 (size (Pos so_28_P1)))))
(constraint (not (RegLan.Sem r (ReAsp so_28_N1 0 (size (Pos so_28_N1))))))

(check-synth)
