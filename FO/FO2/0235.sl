(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (ticket/ticket_protocol13)")

(require "theories/ticket-4357690c.sl")
(require "../global/models/0235.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (not (FO.Sem phi (FO.Asp N6))))
(constraint (not (FO.Sem phi (FO.Asp N7))))
(constraint (FO.Sem phi (FO.Asp P8)))
(constraint (not (FO.Sem phi (FO.Asp N9))))
(constraint (FO.Sem phi (FO.Asp P10)))
(constraint (FO.Sem phi (FO.Asp P11)))

(check-synth)
