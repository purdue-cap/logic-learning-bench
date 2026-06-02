(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (hybrid_reliable_broadcast_cisa/rb_tp_correctness_impl)")

(require "theories/hybrid_reliable_broadcast_cisa-ad5dfe37.sl")
(require "../global/models/0170.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (FO.Sem phi (FO.Asp P3)))

(check-synth)
