(set-info :author "Chentian Wu")
(set-info :source "FOLseparators (tlb_pcrel/tlb6)")

(require "theories/tlb_pcrel-838d0912.sl")
(require "../global/models/0291.sl")

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))

(check-synth)
