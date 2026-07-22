(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/48) — gt=concat(repeatatleast(<num>,1),star(concat(<_>,repeatatleast(<num>,1))))")
(set-info :description "I need to validate a string that contains underscore(_) in between the numbers. Underscore character is an optional. Only condition is, it should be between the numbers.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00111 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00208 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00692 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00046 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00288 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00204 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00231 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00421 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00018 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00150 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00432 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00209 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
