(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (leader_election_ring_btw_nonreflexive/c0)")

(require "theories/leader_election_ring_btw_nonreflexive-c4d3b61d.sl")
(require "../global/models/0176.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (FO.Sem phi (FO.Asp P4)))

(check-synth)
