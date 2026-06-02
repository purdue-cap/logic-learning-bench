(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (chord/1s-nofail-liveness-epr-chord_ordered_ring)")

(require "theories/chord-2f2f7007.sl")
(require "../global/models/0121.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (not (FO.Sem phi (FO.Asp N6))))
(constraint (FO.Sem phi (FO.Asp P7)))
(constraint (FO.Sem phi (FO.Asp P8)))
(constraint (not (FO.Sem phi (FO.Asp N9))))
(constraint (FO.Sem phi (FO.Asp P10)))
(constraint (FO.Sem phi (FO.Asp P11)))
(constraint (not (FO.Sem phi (FO.Asp N12))))

(check-synth)
