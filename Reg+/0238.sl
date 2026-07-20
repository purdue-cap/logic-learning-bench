(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/40) — gt=concat(repeatrange(<num>,1,2),optional(concat(<.>,repeatrange(<num>,1,2))))")
(set-info :description "i need regular expression for : one or two digits then '.' and one or two digits.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00007 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00106 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00195 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00095 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00032 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00109 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00110 head tail))))

(check-synth)
