(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no5_length_at_least3_and_third_0")
(set-info :description "Length is at least 3 and its 3rd symbol is 0.")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w__0 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w__0_ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w__0__ head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w??1 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w??1? head tail))))

(check-synth)
