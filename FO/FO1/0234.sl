(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (ticket/ticket_protocol12)")

(require "theories/ticket-4357690c.sl")
(require "../global/models/0234.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (not (FO.Sem phi (FO.Asp N6))))
(constraint (FO.Sem phi (FO.Asp P7)))
(constraint (FO.Sem phi (FO.Asp P8)))
(constraint (not (FO.Sem phi (FO.Asp N9))))
(constraint (FO.Sem phi (FO.Asp P10)))

(check-synth)
