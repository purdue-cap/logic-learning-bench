(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/49) — gt=concat(<num>,star(concat(concat(< >,concat(<+>,< >)),<num>)))")
(set-info :description "I need some help in finding how to write a validation expression to validate a string representing addition of digits.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00008 0 (size (Pos w00008)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00290 0 (size (Pos w00290)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00503 0 (size (Pos w00503)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00114 0 (size (Pos w00114))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00210 0 (size (Pos w00210))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00428 0 (size (Pos w00428))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00468 0 (size (Pos w00468))))))

(check-synth)
