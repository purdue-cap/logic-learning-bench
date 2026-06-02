(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (lockserv/conj5)")

(require "theories/lockserv-93e3d996.sl")
(require "../global/models/0191.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (not (FO.Sem phi (FO.Asp N6))))

(check-synth)
