(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/125) — gt=contain(concat(<cap>,<low>))")
(set-info :description "Find sequences of one upper case letter followed by lower case letters.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00313 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00634 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
