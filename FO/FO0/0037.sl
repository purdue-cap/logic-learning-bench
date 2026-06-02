(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (bosco_oded_3t_safety/c4)")

(require "theories/shared-a2d4218b.sl")
(require "../global/models/0037.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (FO.Sem phi (FO.Asp P4)))

(check-synth)
