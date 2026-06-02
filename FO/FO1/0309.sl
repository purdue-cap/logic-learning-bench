(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (vertical_paxos_epr_unverified_optimization/c11)")

(require "theories/vertical_paxos_epr_unverified_optimization-2bc0d415.sl")
(require "../global/models/0309.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (not (FO.Sem phi (FO.Asp N6))))
(constraint (FO.Sem phi (FO.Asp P7)))
(constraint (not (FO.Sem phi (FO.Asp N8))))
(constraint (not (FO.Sem phi (FO.Asp N9))))

(check-synth)
