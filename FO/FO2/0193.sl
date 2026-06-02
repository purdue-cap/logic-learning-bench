(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (lockserv/conj7)")

(require "theories/lockserv-93e3d996.sl")
(require "../global/models/0193.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (FO.Sem phi (FO.Asp P3)))

(check-synth)
