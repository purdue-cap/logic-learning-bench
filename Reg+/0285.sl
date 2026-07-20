(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/89) — gt=not(contain(concat(<.>,<.>)))")
(set-info :description "I want to use a Regular expression validator in my line edit that doesn't allow to write dot('.') right after dot('.')")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00522 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00591 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00521 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00026 head tail))))

(check-synth)
