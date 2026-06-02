(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (multi_paxos_epr/c8)")

(require "theories/multi_paxos_epr-ed65a58f.sl")
(require "../global/models/0207.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (not (FO.Sem phi (FO.Asp N6))))

(check-synth)
