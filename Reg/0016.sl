(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no16_not_end_with_01")
(set-info :description "does not end with 01")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w_ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w_0 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w11 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w__0 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w_11 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w___0 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w__11 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w___11 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?01 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w??01 head tail))))

(check-synth)
