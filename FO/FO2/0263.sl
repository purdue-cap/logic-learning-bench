(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (ticket_nested/ticket_protocol_safety)")

(require "theories/ticket_nested-ab5662a6.sl")
(require "../global/models/0263.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (FO.Sem phi (FO.Asp P6)))

(check-synth)
