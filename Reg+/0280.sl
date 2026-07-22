(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/84) — gt=repeatatleast(or(<let>,or(<num>,< >)),1)")
(set-info :description "I am trying to make a regular expression that validates letters, numbers and spaces ONLY.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00662 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00635 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00560 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00604 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00627 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00614 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00655 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
