(require "theories/124.sl")
(require "models/124.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_124_P1 0 (size (Pos so_124_P1)))))
(constraint (not (RegLan.Sem r (ReAsp so_124_N1 0 (size (Pos so_124_N1))))))

(check-synth)
