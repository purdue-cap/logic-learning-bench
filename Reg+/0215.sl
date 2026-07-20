(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/15) — gt=concat(repeatrange(<num>,1,15),optional(concat(<.>,repeatrange(<num>,1,3))))")
(set-info :description "i need a Regular that validate Decimal (18,3) this mean max number of digits before comma is 15 and accept 3 numbers after comma . 18 precision 3 scale.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00625 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00683 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00419 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00661 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00010 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00125 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00672 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00462 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00411 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00256 head tail))))

(check-synth)
