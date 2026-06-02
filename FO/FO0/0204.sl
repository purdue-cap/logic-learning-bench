(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (multi_paxos_epr/c5)")

(require "theories/multi_paxos_epr-ed65a58f.sl")
(require "../global/models/0204.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (FO.Sem phi (FO.Asp P6)))
(constraint (not (FO.Sem phi (FO.Asp N7))))

(check-synth)
