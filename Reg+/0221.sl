(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/21) — gt=concat(repeatatleast(<num>,1),optional(concat(<.>,star(<num>))))")
(set-info :description "I need a regular expression that validates a number, but doesn't require a digit after the decimal")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00111 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00202 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00283 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00098 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00194 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00045 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00282 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00029 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00291 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
