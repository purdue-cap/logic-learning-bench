(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no19_not_contain_substring_100")
(set-info :description "w does not contain 100 as a substring")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w_ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w__ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w0__ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w_1_ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w__1 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w_101 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w0_01_ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w__1_1_1 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w100 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?100 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w100? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?100? head tail))))

(check-synth)
