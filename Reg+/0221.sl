(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/21) — gt=concat(repeatatleast(<num>,1),optional(concat(<.>,star(<num>))))")
(set-info :description "I need a regular expression that validates a number, but doesn't require a digit after the decimal")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00111 0 (size (Pos w00111)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00202 0 (size (Pos w00202)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00283 0 (size (Pos w00283)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00098 0 (size (Pos w00098)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00194 0 (size (Pos w00194)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00045 0 (size (Pos w00045)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00282 0 (size (Pos w00282))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00029 0 (size (Pos w00029))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00291 0 (size (Pos w00291))))))

(check-synth)
