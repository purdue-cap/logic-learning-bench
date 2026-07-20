(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/90) — gt=repeatatleast(<num>,1)")
(set-info :description "I want regex that only validates that the field contains digits, but that does not care about how many.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00055 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00214 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00304 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00397 head tail))))

(check-synth)
