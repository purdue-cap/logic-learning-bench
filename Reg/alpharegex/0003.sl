(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no3_substring_0101")
(set-info :description "w contains the substring 0101")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w0101 0 (size (Pos w0101)))))
(constraint (RegLan.Sem r (RegLan.Asp w_0101_ 0 (size (Pos w_0101_)))))
(constraint (RegLan.Sem r (RegLan.Asp w__0101__ 0 (size (Pos w__0101__)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0 0 (size (Pos w0))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1 0 (size (Pos w1))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?? 0 (size (Pos w??))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w??? 0 (size (Pos w???))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w???0 0 (size (Pos w???0))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?0?? 0 (size (Pos w?0??))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1??? 0 (size (Pos w1???))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w??1? 0 (size (Pos w??1?))))))

(check-synth)
