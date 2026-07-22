(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/64) — gt=concat(<let>,repeat(<num>,5))")
(set-info :description "What is the regex that matches 6 characters, first is a letter, others are numbers")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00396 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00391 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00360 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00362 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00420 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
