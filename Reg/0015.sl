(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no15_except_0_and_1")
(set-info :description "w is any string except 0 and 1")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w__ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w___ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w____ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w0 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w1 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
