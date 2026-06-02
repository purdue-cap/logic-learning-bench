(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no15_except_0_and_1")
(set-info :description "w is any string except 0 and 1")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w__ 0 (size (Pos w__)))))
(constraint (RegLan.Sem r (RegLan.Asp w___ 0 (size (Pos w___)))))
(constraint (RegLan.Sem r (RegLan.Asp w____ 0 (size (Pos w____)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0 0 (size (Pos w0))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1 0 (size (Pos w1))))))

(check-synth)
