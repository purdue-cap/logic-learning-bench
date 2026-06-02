(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/17) — gt=concat(concat(repeat(<num>,3),<->),concat(repeat(<num>,3),concat(<->,repeat(<num>,4))))")
(set-info :description "R1: I want to validate a 10 digit USA style phone number using a Regular Expression in Javascript")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00606 0 (size (Pos w00606)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00542 0 (size (Pos w00542))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00613 0 (size (Pos w00613))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00602 0 (size (Pos w00602))))))

(check-synth)
