(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/89) — gt=not(contain(concat(<.>,<.>)))")
(set-info :description "I want to use a Regular expression validator in my line edit that doesn't allow to write dot('.') right after dot('.')")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00522 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00591 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00521 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00026 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
