(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/65) — gt=concat(repeatrange(<num>,1,3),repeatrange(concat(<.>,repeat(<num>,3)),0,2))")
(set-info :description "I'm trying to make a regular expression that validates positive natural numbers from three digits to 9 digits and separates the thousand unit and the million unit with a point")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00112 0 (size (Pos w00112)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00275 0 (size (Pos w00275)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00354 0 (size (Pos w00354)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00423 0 (size (Pos w00423)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00497 0 (size (Pos w00497)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00537 0 (size (Pos w00537)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00575 0 (size (Pos w00575)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00539 0 (size (Pos w00539))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00502 0 (size (Pos w00502))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00538 0 (size (Pos w00538))))))

(check-synth)
