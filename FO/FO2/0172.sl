(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (hybrid_reliable_broadcast_cisa/rb_tp_correctness_impl4)")

(require "theories/hybrid_reliable_broadcast_cisa-ad5dfe37.sl")
(require "../global/models/0172.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (not (FO.Sem phi (FO.Asp N6))))
(constraint (FO.Sem phi (FO.Asp P7)))
(constraint (not (FO.Sem phi (FO.Asp N8))))
(constraint (FO.Sem phi (FO.Asp P9)))
(constraint (not (FO.Sem phi (FO.Asp N10))))
(constraint (not (FO.Sem phi (FO.Asp N11))))
(constraint (FO.Sem phi (FO.Asp P12)))

(check-synth)
