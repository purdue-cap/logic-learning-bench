(require "theories/118.sl")
(require "models/118.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_118_P1 0 (size (Pos so_118_P1)))))
(constraint (not (RegLan.Sem r (ReAsp so_118_N1 0 (size (Pos so_118_N1))))))

(check-synth)
