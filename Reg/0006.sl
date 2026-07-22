(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no6_len_is_3_mul")
(set-info :description "strings whose length is a multiple of 3")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w___ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w______ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w?? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w???? (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
