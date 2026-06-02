(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (hybrid_reliable_broadcast_cisa/rb_tp_correctness_impl3)")

(require "theories/hybrid_reliable_broadcast_cisa-ad5dfe37.sl")
(require "../global/models/0171.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))

(check-synth)
