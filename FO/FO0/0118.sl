(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (chord/1s-nofail-liveness-epr-chord_at_least_one_ring)")

(require "theories/chord-2f2f7007.sl")
(require "../global/models/0118.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (FO.Sem phi (FO.Asp P6)))

(check-synth)
