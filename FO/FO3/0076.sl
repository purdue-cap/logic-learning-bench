(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (byz_paxos/conj13)")

(require "theories/byz_paxos-0f4e99fa.sl")
(require "../global/models/0076.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (FO.Sem phi (FO.Asp P4)))

(check-synth)
