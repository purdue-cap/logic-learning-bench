(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (ticket/ticket_protocol_safety)")

(require "theories/ticket-4357690c.sl")
(require "../global/models/0245.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (not (FO.Sem phi (FO.Asp N4))))

(check-synth)
