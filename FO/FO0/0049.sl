(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (bosco_oded_5t_onestep/c5)")

(require "theories/shared-a2d4218b.sl")
(require "../global/models/0049.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (FO.Sem phi (FO.Asp P5)))

(check-synth)
