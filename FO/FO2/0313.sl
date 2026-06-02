(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (vertical_paxos_epr_unverified_optimization/c2)")

(require "theories/vertical_paxos_epr_unverified_optimization-2bc0d415.sl")
(require "../global/models/0313.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))

(check-synth)
