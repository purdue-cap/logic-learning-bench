(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (toy_lock_inv/conj11)")

(require "theories/toy_lock_inv-4805fc37.sl")
(require "../global/models/0299.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (FO.Sem phi (FO.Asp P6)))

(check-synth)
