(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/90) — gt=repeatatleast(<num>,1)")
(set-info :description "I want regex that only validates that the field contains digits, but that does not care about how many.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00055 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00214 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00304 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00397 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
