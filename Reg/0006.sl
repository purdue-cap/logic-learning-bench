(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no6_len_is_3_mul")
(set-info :description "strings whose length is a multiple of 3")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w___ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w______ head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w???? head tail))))

(check-synth)
