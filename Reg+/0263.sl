(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/66) — gt=concat(concat(<cap>,repeatatleast(<low>,1)),concat(< >,concat(<cap>,repeatatleast(<low>,1))))")
(set-info :description "First Name and Last Name Only with only 2 words with only 1 Space.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00584 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00665 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00583 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00616 head tail))))

(check-synth)
