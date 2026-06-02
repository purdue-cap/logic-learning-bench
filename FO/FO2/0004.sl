(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (alternating_bit_protocol/abp10)")

(require "theories/alternating_bit_protocol-232f7bb5.sl")
(require "../global/models/0004.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (FO.Sem phi (FO.Asp P6)))
(constraint (not (FO.Sem phi (FO.Asp N7))))
(constraint (FO.Sem phi (FO.Asp P8)))
(constraint (FO.Sem phi (FO.Asp P9)))
(constraint (FO.Sem phi (FO.Asp P10)))
(constraint (FO.Sem phi (FO.Asp P11)))
(constraint (FO.Sem phi (FO.Asp P12)))
(constraint (FO.Sem phi (FO.Asp P13)))

(check-synth)
