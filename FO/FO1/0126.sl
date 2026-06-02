(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (fast_paxos/c11)")

(require "theories/fast_paxos-46d74de9.sl")
(require "../global/models/0126.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))

(check-synth)
