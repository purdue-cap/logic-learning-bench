(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (ticket_nested/ticket_protocol_tp1_impl2)")

(require "theories/ticket_nested-ab5662a6.sl")
(require "../global/models/0267.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (not (FO.Sem phi (FO.Asp N6))))
(constraint (not (FO.Sem phi (FO.Asp N7))))
(constraint (FO.Sem phi (FO.Asp P8)))

(check-synth)
