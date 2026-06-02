(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (byz_paxos/conj8)")

(require "theories/byz_paxos-0f4e99fa.sl")
(require "../global/models/0078.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (not (FO.Sem phi (FO.Asp N3))))

(check-synth)
