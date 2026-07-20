(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/83) — gt=concat(repeatatleast(<num>,1),optional(concat(<,>,repeatrange(<num>,1,3))))")
(set-info :description "I'm trying to validate a form using regular expressions, the conditions are: It has to be a numeric value. It CAN have up to three decimal places(0,1,2 are allowed too).It has to be divided by a comma(,).")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00271 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00212 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00091 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00536 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00338 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00213 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00129 head tail))))

(check-synth)
