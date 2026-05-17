(require "theories/66.sl")
(require "models/66.sl")

(synth-fun regex () RegLan)

(constraint (RegLan.Sem r (ReAsp so_66_P1 0 (size (Pos so_66_P1)))))
(constraint (not (RegLan.Sem r (ReAsp so_66_N1 0 (size (Pos so_66_N1))))))
(constraint (not (RegLan.Sem r (ReAsp so_66_N2 0 (size (Pos so_66_N2))))))
(constraint (not (RegLan.Sem r (ReAsp so_66_N3 0 (size (Pos so_66_N3))))))

(check-synth)
