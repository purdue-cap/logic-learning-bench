(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (alternating_bit_protocol/abp6)")

(require "theories/alternating_bit_protocol-232f7bb5.sl")
(require "../global/models/0017.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (FO.Sem phi (FO.Asp P6)))
(constraint (FO.Sem phi (FO.Asp P7)))
(constraint (not (FO.Sem phi (FO.Asp N8))))
(constraint (FO.Sem phi (FO.Asp P9)))
(constraint (FO.Sem phi (FO.Asp P10)))
(constraint (FO.Sem phi (FO.Asp P11)))
(constraint (FO.Sem phi (FO.Asp P12)))
(constraint (FO.Sem phi (FO.Asp P13)))

(check-synth)
