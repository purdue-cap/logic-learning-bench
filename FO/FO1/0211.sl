(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (paxos_epr/c1)")

(require "theories/paxos_epr-5637217b.sl")
(require "../global/models/0211.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (not (FO.Sem phi (FO.Asp N5))))

(check-synth)
