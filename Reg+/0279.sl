(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/83) — gt=concat(repeatatleast(<num>,1),optional(concat(<,>,repeatrange(<num>,1,3))))")
(set-info :description "I'm trying to validate a form using regular expressions, the conditions are: It has to be a numeric value. It CAN have up to three decimal places(0,1,2 are allowed too).It has to be divided by a comma(,).")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00271 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00212 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00091 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00536 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00338 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00213 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00129 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
