(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/48) — gt=concat(repeatatleast(<num>,1),star(concat(<_>,repeatatleast(<num>,1))))")
(set-info :description "I need to validate a string that contains underscore(_) in between the numbers. Underscore character is an optional. Only condition is, it should be between the numbers.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00111 0 (size (Pos w00111)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00208 0 (size (Pos w00208)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00692 0 (size (Pos w00692)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00046 0 (size (Pos w00046)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00288 0 (size (Pos w00288)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00204 0 (size (Pos w00204))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00231 0 (size (Pos w00231))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00421 0 (size (Pos w00421))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00018 0 (size (Pos w00018))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00150 0 (size (Pos w00150))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00432 0 (size (Pos w00432))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00209 0 (size (Pos w00209))))))

(check-synth)
