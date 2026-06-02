(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (alternating_bit_protocol/abp_ack_msg)")

(require "theories/alternating_bit_protocol-232f7bb5.sl")
(require "../global/models/0021.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (FO.Sem phi (FO.Asp P5)))

(check-synth)
