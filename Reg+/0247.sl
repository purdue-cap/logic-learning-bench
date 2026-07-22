(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/49) — gt=concat(<num>,star(concat(concat(< >,concat(<+>,< >)),<num>)))")
(set-info :description "I need some help in finding how to write a validation expression to validate a string representing addition of digits.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00008 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00290 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00503 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00114 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00210 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00428 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00468 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
