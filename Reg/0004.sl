(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no4_begin_1_end_0")
(set-info :description "w begins with a 1 and ends with a 0")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w0_1 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w0__1 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w1 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0?0 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w1?1 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w1?0 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
