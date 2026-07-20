(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/65) — gt=concat(repeatrange(<num>,1,3),repeatrange(concat(<.>,repeat(<num>,3)),0,2))")
(set-info :description "I'm trying to make a regular expression that validates positive natural numbers from three digits to 9 digits and separates the thousand unit and the million unit with a point")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00112 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00275 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00354 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00423 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00497 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00537 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00575 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00539 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00502 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00538 head tail))))

(check-synth)
