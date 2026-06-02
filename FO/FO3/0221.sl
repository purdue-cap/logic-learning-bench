(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (stoppable_paxos_epr/c12)")

(require "theories/stoppable_paxos_epr-d7674849.sl")
(require "../global/models/0221.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (FO.Sem phi (FO.Asp P3)))

(check-synth)
