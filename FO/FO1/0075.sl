(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (byz_paxos/conj12)")

(require "theories/byz_paxos-0f4e99fa.sl")
(require "../global/models/0075.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))

(check-synth)
