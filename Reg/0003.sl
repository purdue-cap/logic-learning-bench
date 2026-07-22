(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no3_substring_0101")
(set-info :description "w contains the substring 0101")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w0101 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w_0101_ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w__0101__ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w0 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w1 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w?? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w??? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w???0 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w?0?? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w1??? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w??1? (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
