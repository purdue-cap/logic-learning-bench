(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no22_atleast2_and_not_end_with_10")
(set-info :description "w has length at least 2 and does not end with 10")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w00 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w01 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w11 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w_00 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w_01 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w_11 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w__00 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w__01 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w__11 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w10 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?10 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w??10 head tail))))

(check-synth)
