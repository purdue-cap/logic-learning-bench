(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/125) — gt=contain(concat(<cap>,<low>))")
(set-info :description "Find sequences of one upper case letter followed by lower case letters.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00313 0 (size (Pos w00313)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00634 0 (size (Pos w00634))))))

(check-synth)
