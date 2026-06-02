(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (bosco_oded_5t_safety/c1)")

(require "theories/shared-a2d4218b.sl")
(require "../global/models/0053.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (not (FO.Sem phi (FO.Asp N4))))

(check-synth)
