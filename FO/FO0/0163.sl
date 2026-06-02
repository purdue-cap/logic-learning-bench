(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (hybrid_reliable_broadcast_cisa/rb10)")

(require "theories/hybrid_reliable_broadcast_cisa-ad5dfe37.sl")
(require "../global/models/0163.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (FO.Sem phi (FO.Asp P6)))
(constraint (not (FO.Sem phi (FO.Asp N7))))
(constraint (FO.Sem phi (FO.Asp P8)))
(constraint (not (FO.Sem phi (FO.Asp N9))))
(constraint (FO.Sem phi (FO.Asp P10)))
(constraint (FO.Sem phi (FO.Asp P11)))
(constraint (FO.Sem phi (FO.Asp P12)))
(constraint (FO.Sem phi (FO.Asp P13)))

(check-synth)
