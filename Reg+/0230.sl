(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/31) — gt=concat(repeat(<hex>,8),concat(<_>,star(<let>)))")
(set-info :description "I want to validate if my input consists starting with 8 hexadecimal characters followed by a underscore, followed by any number of characters with any value.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00605 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00467 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00535 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00509 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
