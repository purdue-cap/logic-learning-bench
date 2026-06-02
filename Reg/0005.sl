(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no5_length_at_least3_and_third_0")
(set-info :description "Length is at least 3 and its 3rd symbol is 0.")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w__0 0 (size (Pos w__0)))))
(constraint (RegLan.Sem r (RegLan.Asp w__0_ 0 (size (Pos w__0_)))))
(constraint (RegLan.Sem r (RegLan.Asp w__0__ 0 (size (Pos w__0__)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w? 0 (size (Pos w?))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?? 0 (size (Pos w??))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w??1 0 (size (Pos w??1))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w??1? 0 (size (Pos w??1?))))))

(check-synth)
