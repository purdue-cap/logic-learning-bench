(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (fast_paxos_epr/c)")

(require "theories/fast_paxos_epr-8ffc49d2.sl")
(require "../global/models/0135.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (not (FO.Sem phi (FO.Asp N3))))

(check-synth)
