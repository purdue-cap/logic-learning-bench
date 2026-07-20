(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/49) — gt=concat(<num>,star(concat(concat(< >,concat(<+>,< >)),<num>)))")
(set-info :description "I need some help in finding how to write a validation expression to validate a string representing addition of digits.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00008 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00290 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00503 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00114 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00210 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00428 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00468 head tail))))

(check-synth)
