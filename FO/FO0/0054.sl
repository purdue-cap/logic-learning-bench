(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (bosco_oded_5t_safety/c11)")

(require "theories/shared-a2d4218b.sl")
(require "../global/models/0054.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (FO.Sem phi (FO.Asp P6)))
(constraint (FO.Sem phi (FO.Asp P7)))
(constraint (not (FO.Sem phi (FO.Asp N8))))

(check-synth)
