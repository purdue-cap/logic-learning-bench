(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/80) — gt=and(repeatatleast(<num>,10),not(startwith(<$>)))")
(set-info :description "the number with 10 or more digits and that number should not have '$' symbol in front of it.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00535 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00621 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00554 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00501 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
