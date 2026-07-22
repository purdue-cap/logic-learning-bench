(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/118) — gt=repeat(<num>,6)")
(set-info :description "I want to match a certain set of strings, such as: strings composed of exactly 6 digits")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00336 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00511 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
