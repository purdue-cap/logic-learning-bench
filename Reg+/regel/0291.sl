(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/95) — gt=concat(repeat(<num>,3),concat(< >,repeat(<num>,2)))")
(set-info :description "I am writing a regular expression to validate a zip code, where it should have exactly a length of 6 characters, the first 3 characters are digits, the last 2 also, but the character 4 should be a space.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00346 0 (size (Pos w00346)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00353 0 (size (Pos w00353))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00281 0 (size (Pos w00281))))))

(check-synth)
