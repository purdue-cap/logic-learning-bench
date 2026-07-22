(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/65) — gt=concat(repeatrange(<num>,1,3),repeatrange(concat(<.>,repeat(<num>,3)),0,2))")
(set-info :description "I'm trying to make a regular expression that validates positive natural numbers from three digits to 9 digits and separates the thousand unit and the million unit with a point")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00112 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00275 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00354 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00423 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00497 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00537 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00575 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00539 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00502 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00538 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
