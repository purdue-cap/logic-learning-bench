(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no16_not_end_with_01")
(set-info :description "does not end with 01")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w_ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w_0 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w11 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w__0 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w_11 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w___0 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w__11 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w___11 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w?01 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w??01 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
