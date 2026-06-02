(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (ticket/ticket_protocol7)")

(require "theories/ticket-4357690c.sl")
(require "../global/models/0242.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (FO.Sem phi (FO.Asp P3)))

(check-synth)
