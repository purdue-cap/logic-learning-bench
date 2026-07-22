(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/36) — gt=not(startwith(concat(<0>,<num>)))")
(set-info :description "I'm trying to validate a value and that value cannot have a zero and then a number in front of it")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00263 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00276 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00120 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00178 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
