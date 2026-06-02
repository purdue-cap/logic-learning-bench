(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (chord/1s-nofail-liveness-epr-chord)")

(require "theories/chord-2f2f7007.sl")
(require "../global/models/0105.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))

(check-synth)
