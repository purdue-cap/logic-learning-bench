(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (vertical_paxos_epr_unverified_optimization/c6)")

(require "theories/vertical_paxos_epr_unverified_optimization-2bc0d415.sl")
(require "../global/models/0317.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (not (FO.Sem phi (FO.Asp N6))))
(constraint (not (FO.Sem phi (FO.Asp N7))))
(constraint (FO.Sem phi (FO.Asp P8)))

(check-synth)
