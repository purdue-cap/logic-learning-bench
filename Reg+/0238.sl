(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/40) — gt=concat(repeatrange(<num>,1,2),optional(concat(<.>,repeatrange(<num>,1,2))))")
(set-info :description "i need regular expression for : one or two digits then '.' and one or two digits.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00007 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00106 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00195 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00095 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00032 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00109 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00110 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
