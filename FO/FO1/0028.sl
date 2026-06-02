(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (alternating_bit_protocol/abp_data_msg2)")

(require "theories/alternating_bit_protocol-232f7bb5.sl")
(require "../global/models/0028.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (FO.Sem phi (FO.Asp P6)))
(constraint (FO.Sem phi (FO.Asp P7)))

(check-synth)
