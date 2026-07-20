(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/36) — gt=not(startwith(concat(<0>,<num>)))")
(set-info :description "I'm trying to validate a value and that value cannot have a zero and then a number in front of it")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00263 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00276 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00120 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00178 head tail))))

(check-synth)
