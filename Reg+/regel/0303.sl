(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/107) — gt=concat(repeatatleast(<num>,1),optional(concat(<.>,repeatrange(<num>,1,2))))")
(set-info :description "What is the regular expression for a decimal with a precision of 2? The decimal point may be optional, and integers may also be included")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00349 0 (size (Pos w00349)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00008 0 (size (Pos w00008)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00303 0 (size (Pos w00303)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00678 0 (size (Pos w00678)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00172 0 (size (Pos w00172)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00121 0 (size (Pos w00121)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00413 0 (size (Pos w00413))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00430 0 (size (Pos w00430))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00450 0 (size (Pos w00450))))))

(check-synth)
