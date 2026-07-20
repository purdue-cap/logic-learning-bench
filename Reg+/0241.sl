(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/43) — gt=or(concat(<0>,concat(<.>,concat(<num1-9>,star(<num>)))),concat(<num1-9>,concat(star(<num>),concat(<.>,star(<num>)))))")
(set-info :description "I am trying to validate dollar amount, anything greater than equal to 0.1")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0241_01 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0241_02 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0241_03 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w0241_04 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0241_05 head tail))))

(check-synth)
