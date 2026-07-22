(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/15) — gt=concat(repeatrange(<num>,1,15),optional(concat(<.>,repeatrange(<num>,1,3))))")
(set-info :description "i need a Regular that validate Decimal (18,3) this mean max number of digits before comma is 15 and accept 3 numbers after comma . 18 precision 3 scale.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00625 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00683 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00419 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00661 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00010 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00125 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00672 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00462 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00411 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00256 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
