(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/43) — gt=or(concat(<0>,concat(<.>,concat(<num1-9>,star(<num>)))),concat(<num1-9>,concat(star(<num>),concat(<.>,star(<num>)))))")
(set-info :description "I am trying to validate dollar amount, anything greater than equal to 0.1")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0241_01 0 (size (Pos w0241_01)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0241_02 0 (size (Pos w0241_02)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0241_03 0 (size (Pos w0241_03)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0241_04 0 (size (Pos w0241_04))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0241_05 0 (size (Pos w0241_05))))))

(check-synth)
