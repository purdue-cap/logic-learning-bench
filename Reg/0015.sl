(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no15_except_0_and_1")
(set-info :description "w is any string except 0 and 1")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w__ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w___ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w____ head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w0 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1 head tail))))

(check-synth)
