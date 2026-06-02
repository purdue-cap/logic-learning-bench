(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (multi_paxos_epr/c0)")

(require "theories/multi_paxos_epr-ed65a58f.sl")
(require "../global/models/0198.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))

(check-synth)
