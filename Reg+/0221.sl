(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/21) — gt=concat(repeatatleast(<num>,1),optional(concat(<.>,star(<num>))))")
(set-info :description "I need a regular expression that validates a number, but doesn't require a digit after the decimal")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00111 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00202 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00283 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00098 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00194 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00045 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00282 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00029 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00291 head tail))))

(check-synth)
