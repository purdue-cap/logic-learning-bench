(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no22_atleast2_and_not_end_with_10")
(set-info :description "w has length at least 2 and does not end with 10")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w00 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w11 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w_00 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w_01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w_11 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w__00 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w__01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w__11 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w10 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w?10 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w??10 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
