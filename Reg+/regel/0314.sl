(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/118) — gt=repeat(<num>,6)")
(set-info :description "I want to match a certain set of strings, such as: strings composed of exactly 6 digits")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00336 0 (size (Pos w00336)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00511 0 (size (Pos w00511))))))

(check-synth)
