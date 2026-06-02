(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/45) — gt=and(repeatrange(<num>,10,14),or(startwith(concat(<0>,<7>)),startwith(concat(<4>,concat(<4>,<7>)))))")
(set-info :description "I need a regular expression that only validates UK mobile numbers. A UK mobile number can be between 10-14 digits and either starts with '07', or omits the '0' and starts with '447'. Importantly, if the user adds '+44' it should be rejected.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00568 0 (size (Pos w00568)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00607 0 (size (Pos w00607)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00642 0 (size (Pos w00642))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00599 0 (size (Pos w00599))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00563 0 (size (Pos w00563))))))

(check-synth)
