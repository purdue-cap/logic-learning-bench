(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/17) — gt=concat(concat(repeat(<num>,3),<->),concat(repeat(<num>,3),concat(<->,repeat(<num>,4))))")
(set-info :description "R1: I want to validate a 10 digit USA style phone number using a Regular Expression in Javascript")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00606 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00542 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00613 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00602 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
