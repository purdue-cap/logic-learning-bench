(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/43) — gt=or(concat(<0>,concat(<.>,concat(<num1-9>,star(<num>)))),concat(<num1-9>,concat(star(<num>),concat(<.>,star(<num>)))))")
(set-info :description "I am trying to validate dollar amount, anything greater than equal to 0.1")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (with-model w0241_01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0241_02 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0241_03 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w0241_04 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0241_05 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
