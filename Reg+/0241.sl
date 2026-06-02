(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/43) — gt=or(concat(<0>,concat(<.>,concat(<num1-9>,star(<num>)))),concat(<num1-9>,concat(star(<num>),concat(<.>,star(<num>)))))")
(set-info :description "I am trying to validate dollar amount, anything greater than equal to 0.1")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00007 0 (size (Pos w00007)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00097 0 (size (Pos w00097)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00217 0 (size (Pos w00217)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00096 0 (size (Pos w00096))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00006 0 (size (Pos w00006))))))

(check-synth)
