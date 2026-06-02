(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/36) — gt=not(startwith(concat(<0>,<num>)))")
(set-info :description "I'm trying to validate a value and that value cannot have a zero and then a number in front of it")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00263 0 (size (Pos w00263)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00276 0 (size (Pos w00276)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00120 0 (size (Pos w00120)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00178 0 (size (Pos w00178))))))

(check-synth)
