(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (lockserv/conj2)")

(require "theories/lockserv-93e3d996.sl")
(require "../global/models/0188.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))

(check-synth)
