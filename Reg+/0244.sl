(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/46) — gt=concat(repeatrange(<num>,1,4),optional(concat(or(<.>,<,>),repeatrange(<num>,1,2))))")
(set-info :description "I want a regular expression for decimal input, which can take 4 digits before decimal or comma and 2 digits after decimal/comma. 5 digit number without decimal is invalid.Validation show also include comma along with decimal.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00007 0 (size (Pos w00007)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00196 0 (size (Pos w00196)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00431 0 (size (Pos w00431)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00437 0 (size (Pos w00437)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00174 0 (size (Pos w00174)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00366 0 (size (Pos w00366)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00306 0 (size (Pos w00306))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00305 0 (size (Pos w00305))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00367 0 (size (Pos w00367))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00308 0 (size (Pos w00308))))))

(check-synth)
