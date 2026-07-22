(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/95) — gt=concat(repeat(<num>,3),concat(< >,repeat(<num>,2)))")
(set-info :description "I am writing a regular expression to validate a zip code, where it should have exactly a length of 6 characters, the first 3 characters are digits, the last 2 also, but the character 4 should be a space.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00346 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00353 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00281 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
