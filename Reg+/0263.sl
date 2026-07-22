(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/66) — gt=concat(concat(<cap>,repeatatleast(<low>,1)),concat(< >,concat(<cap>,repeatatleast(<low>,1))))")
(set-info :description "First Name and Last Name Only with only 2 words with only 1 Space.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00584 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00665 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00583 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00616 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
