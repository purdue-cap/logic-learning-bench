(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no19_not_contain_substring_100")
(set-info :description "w does not contain 100 as a substring")

(require "./global/theories.alpharegex.sl")
(require "./global/models.alpharegex.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w_ 0 (size (Pos w_)))))
(constraint (RegLan.Sem r (RegLan.Asp w__ 0 (size (Pos w__)))))
(constraint (RegLan.Sem r (RegLan.Asp w0__ 0 (size (Pos w0__)))))
(constraint (RegLan.Sem r (RegLan.Asp w_1_ 0 (size (Pos w_1_)))))
(constraint (RegLan.Sem r (RegLan.Asp w__1 0 (size (Pos w__1)))))
(constraint (RegLan.Sem r (RegLan.Asp w_101 0 (size (Pos w_101)))))
(constraint (RegLan.Sem r (RegLan.Asp w0_01_ 0 (size (Pos w0_01_)))))
(constraint (RegLan.Sem r (RegLan.Asp w__1_1_1 0 (size (Pos w__1_1_1)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w100 0 (size (Pos w100))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?100 0 (size (Pos w?100))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w100? 0 (size (Pos w100?))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?100? 0 (size (Pos w?100?))))))

(check-synth)
