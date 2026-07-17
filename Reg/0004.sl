(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no4_begin_1_end_0")
(set-info :description "w begins with a 1 and ends with a 0")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w01 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w0_1 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w0__1 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w1 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0?0 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1?1 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1?0 head tail))))

(check-synth)
