(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no5_length_at_least3_and_third_0")
(set-info :description "Length is at least 3 and its 3rd symbol is 0.")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w__0 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w__0_ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w__0__ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w?? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w??1 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w??1? (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
