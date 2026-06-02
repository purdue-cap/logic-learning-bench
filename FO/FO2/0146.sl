(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (fast_paxos_epr/c4)")

(require "theories/fast_paxos_epr-8ffc49d2.sl")
(require "../global/models/0146.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (FO.Sem phi (FO.Asp P6)))
(constraint (FO.Sem phi (FO.Asp P7)))

(check-synth)
