(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no3_substring_0101")
(set-info :description "w contains the substring 0101")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w0101 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w_0101_ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w__0101__ head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w0 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w??? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w???0 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?0?? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1??? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w??1? head tail))))

(check-synth)
