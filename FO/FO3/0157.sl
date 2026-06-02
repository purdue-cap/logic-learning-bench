(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (flexible_paxos_epr/c4)")

(require "theories/flexible_paxos_epr-12d2d6cd.sl")
(require "../global/models/0157.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (not (FO.Sem phi (FO.Asp N6))))

(check-synth)
