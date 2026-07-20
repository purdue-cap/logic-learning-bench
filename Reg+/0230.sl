(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/31) — gt=concat(repeat(<hex>,8),concat(<_>,star(<let>)))")
(set-info :description "I want to validate if my input consists starting with 8 hexadecimal characters followed by a underscore, followed by any number of characters with any value.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00605 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00467 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00535 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00509 head tail))))

(check-synth)
