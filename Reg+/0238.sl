(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/40) — gt=concat(repeatrange(<num>,1,2),optional(concat(<.>,repeatrange(<num>,1,2))))")
(set-info :description "i need regular expression for : one or two digits then '.' and one or two digits.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00007 0 (size (Pos w00007)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00106 0 (size (Pos w00106)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00195 0 (size (Pos w00195)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00095 0 (size (Pos w00095))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00032 0 (size (Pos w00032))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00109 0 (size (Pos w00109))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00110 0 (size (Pos w00110))))))

(check-synth)
