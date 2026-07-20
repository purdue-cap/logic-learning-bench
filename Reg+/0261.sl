(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/64) — gt=concat(<let>,repeat(<num>,5))")
(set-info :description "What is the regex that matches 6 characters, first is a letter, others are numbers")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00396 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00391 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00360 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00362 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00420 head tail))))

(check-synth)
