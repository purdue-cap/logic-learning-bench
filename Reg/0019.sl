(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no19_not_contain_substring_100")
(set-info :description "w does not contain 100 as a substring")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w_ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w__ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w0__ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w_1_ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w__1 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w_101 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w0_01_ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w__1_1_1 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w100 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w?100 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w100? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w?100? (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
