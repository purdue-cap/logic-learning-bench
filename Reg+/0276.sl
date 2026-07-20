(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/80) — gt=and(repeatatleast(<num>,10),not(startwith(<$>)))")
(set-info :description "the number with 10 or more digits and that number should not have '$' symbol in front of it.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00535 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00621 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00554 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00501 head tail))))

(check-synth)
