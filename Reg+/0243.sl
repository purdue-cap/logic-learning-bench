(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/45) — gt=and(repeatrange(<num>,10,14),or(startwith(concat(<0>,<7>)),startwith(concat(<4>,concat(<4>,<7>)))))")
(set-info :description "I need a regular expression that only validates UK mobile numbers. A UK mobile number can be between 10-14 digits and either starts with '07', or omits the '0' and starts with '447'. Importantly, if the user adds '+44' it should be rejected.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00568 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00607 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00642 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00599 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00563 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
