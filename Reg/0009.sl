(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no9_5th1")
(set-info :description "5th num from right end is 1")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w0____ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w_0____ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w__0____ head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w1???? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?1???? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w??1???? head tail))))

(check-synth)
