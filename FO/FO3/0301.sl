(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (toy_lock_inv/conj13)")

(require "theories/toy_lock_inv-4805fc37.sl")
(require "../global/models/0301.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (not (FO.Sem phi (FO.Asp N6))))
(constraint (not (FO.Sem phi (FO.Asp N7))))
(constraint (FO.Sem phi (FO.Asp P8)))
(constraint (not (FO.Sem phi (FO.Asp N9))))
(constraint (FO.Sem phi (FO.Asp P10)))

(check-synth)
