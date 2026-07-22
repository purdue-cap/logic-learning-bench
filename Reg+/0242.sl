(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/44) — gt=concat(repeatrange(<num>,1,11),optional(concat(<.>,repeatrange(<num>,1,3))))")
(set-info :description "I need a regular expression that satisfy these rules: The maximum number of decimal point is 3 but a number with no decimal point (e.g 12) should be accepted too. the value must be at least 0. the value must be less or equal to 99999999999.999. the radix point is DOT (e.g 2.5, not 2,5)")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (with-model w0242_01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0242_02 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0242_03 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0242_04 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0242_05 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w0242_06 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0242_07 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0242_08 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
