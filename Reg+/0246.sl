(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/48) — gt=concat(repeatatleast(<num>,1),star(concat(<_>,repeatatleast(<num>,1))))")
(set-info :description "I need to validate a string that contains underscore(_) in between the numbers. Underscore character is an optional. Only condition is, it should be between the numbers.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00111 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00208 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00692 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00046 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00288 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00204 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00231 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00421 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00018 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00150 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00432 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00209 head tail))))

(check-synth)
