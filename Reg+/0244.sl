(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/46) — gt=concat(repeatrange(<num>,1,4),optional(concat(or(<.>,<,>),repeatrange(<num>,1,2))))")
(set-info :description "I want a regular expression for decimal input, which can take 4 digits before decimal or comma and 2 digits after decimal/comma. 5 digit number without decimal is invalid.Validation show also include comma along with decimal.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00007 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00196 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00431 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00437 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00174 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00366 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00306 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00305 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00367 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00308 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
