(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/84) — gt=repeatatleast(or(<let>,or(<num>,< >)),1)")
(set-info :description "I am trying to make a regular expression that validates letters, numbers and spaces ONLY.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00662 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00635 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00560 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00604 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00627 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00614 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00655 head tail))))

(check-synth)
