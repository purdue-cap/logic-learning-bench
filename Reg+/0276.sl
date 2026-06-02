(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/80) — gt=and(repeatatleast(<num>,10),not(startwith(<$>)))")
(set-info :description "the number with 10 or more digits and that number should not have '$' symbol in front of it.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00535 0 (size (Pos w00535)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00621 0 (size (Pos w00621))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00554 0 (size (Pos w00554))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00501 0 (size (Pos w00501))))))

(check-synth)
