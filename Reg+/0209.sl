(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/9) — gt=concat(repeatrange(<num>,1,18),optional(concat(<.>,<num>)))")
(set-info :description "I want this value to accept up to 18 digits before the decimal, and 1 digit after. With the decimal point and the digit after it being optional")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00102 0 (size (Pos w00102)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00279 0 (size (Pos w00279)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00695 0 (size (Pos w00695)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00684 0 (size (Pos w00684)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00184 0 (size (Pos w00184))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00691 0 (size (Pos w00691))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00700 0 (size (Pos w00700))))))

(check-synth)
