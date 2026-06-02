(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (flexible_paxos_epr/c8)")

(require "theories/flexible_paxos_epr-12d2d6cd.sl")
(require "../global/models/0161.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (FO.Sem phi (FO.Asp P4)))

(check-synth)
