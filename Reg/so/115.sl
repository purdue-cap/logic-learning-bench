(require "theories/115.sl")
(require "models/115.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_115_P1 0 (size (Pos so_115_P1)))))
(constraint (not (RegLan.Sem r (ReAsp so_115_N1 0 (size (Pos so_115_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_115_N2 0 (size (Pos so_115_N2))))))

(check-synth)
