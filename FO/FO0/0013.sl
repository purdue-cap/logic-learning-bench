(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (alternating_bit_protocol/abp2)")

(require "theories/alternating_bit_protocol-232f7bb5.sl")
(require "../global/models/0013.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (FO.Sem phi (FO.Asp P3)))

(check-synth)
