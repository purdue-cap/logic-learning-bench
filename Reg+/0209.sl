(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/9) — gt=concat(repeatrange(<num>,1,18),optional(concat(<.>,<num>)))")
(set-info :description "I want this value to accept up to 18 digits before the decimal, and 1 digit after. With the decimal point and the digit after it being optional")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00102 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00279 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00695 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00684 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00184 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00691 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00700 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
