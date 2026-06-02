(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/15) — gt=concat(repeatrange(<num>,1,15),optional(concat(<.>,repeatrange(<num>,1,3))))")
(set-info :description "i need a Regular that validate Decimal (18,3) this mean max number of digits before comma is 15 and accept 3 numbers after comma . 18 precision 3 scale.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00625 0 (size (Pos w00625)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00683 0 (size (Pos w00683)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00419 0 (size (Pos w00419)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00661 0 (size (Pos w00661)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00010 0 (size (Pos w00010)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00125 0 (size (Pos w00125)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00672 0 (size (Pos w00672))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00462 0 (size (Pos w00462))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00411 0 (size (Pos w00411))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00256 0 (size (Pos w00256))))))

(check-synth)
