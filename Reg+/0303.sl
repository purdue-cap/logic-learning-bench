(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/107) — gt=concat(repeatatleast(<num>,1),optional(concat(<.>,repeatrange(<num>,1,2))))")
(set-info :description "What is the regular expression for a decimal with a precision of 2? The decimal point may be optional, and integers may also be included")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00349 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00008 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00303 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00678 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00172 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00121 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00413 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00430 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00450 head tail))))

(check-synth)
