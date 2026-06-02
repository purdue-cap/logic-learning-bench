(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/108) — gt=and(repeat(<num>,9),startwith(concat(<0>,<9>)))")
(set-info :description "Here are the conditions for my regular expression: must start with ''09''. total length is 9.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00493 0 (size (Pos w00493)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00533 0 (size (Pos w00533))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00458 0 (size (Pos w00458))))))

(check-synth)
