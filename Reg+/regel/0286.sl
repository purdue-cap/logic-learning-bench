(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/90) — gt=repeatatleast(<num>,1)")
(set-info :description "I want regex that only validates that the field contains digits, but that does not care about how many.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00055 0 (size (Pos w00055)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00214 0 (size (Pos w00214)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00304 0 (size (Pos w00304))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00397 0 (size (Pos w00397))))))

(check-synth)
