(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no2_end_with_01")
(set-info :description "end with 01")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w01 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w_01 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w__01 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w10 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w11 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w_?00 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w_?10 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w_?11 head tail))))

(check-synth)
