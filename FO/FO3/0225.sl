(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (stoppable_paxos_epr/c3)")

(require "theories/stoppable_paxos_epr-d7674849.sl")
(require "../global/models/0225.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))

(check-synth)
