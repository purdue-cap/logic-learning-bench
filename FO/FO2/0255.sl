(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (ticket_nested/ticket_protocol16)")

(require "theories/ticket_nested-ab5662a6.sl")
(require "../global/models/0255.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))

(check-synth)
