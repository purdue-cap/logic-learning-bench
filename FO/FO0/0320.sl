(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (vertical_paxos_epr_unverified_optimization/c9)")

(require "theories/vertical_paxos_epr_unverified_optimization-2bc0d415.sl")
(require "../global/models/0320.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (not (FO.Sem phi (FO.Asp N6))))
(constraint (FO.Sem phi (FO.Asp P7)))

(check-synth)
