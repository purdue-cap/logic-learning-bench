(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no2_end_with_01")
(set-info :description "end with 01")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w_01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w__01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w10 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w11 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w_?00 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w_?10 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w_?11 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
