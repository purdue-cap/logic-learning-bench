(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no9_5th1")
(set-info :description "5th num from right end is 1")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w0____ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w_0____ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w__0____ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w1???? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w?1???? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w??1???? (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
