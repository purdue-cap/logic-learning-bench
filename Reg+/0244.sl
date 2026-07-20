(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/46) — gt=concat(repeatrange(<num>,1,4),optional(concat(or(<.>,<,>),repeatrange(<num>,1,2))))")
(set-info :description "I want a regular expression for decimal input, which can take 4 digits before decimal or comma and 2 digits after decimal/comma. 5 digit number without decimal is invalid.Validation show also include comma along with decimal.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00007 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00196 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00431 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00437 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00174 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00366 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00306 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00305 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00367 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00308 head tail))))

(check-synth)
