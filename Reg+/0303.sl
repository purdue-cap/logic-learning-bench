(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/107) — gt=concat(repeatatleast(<num>,1),optional(concat(<.>,repeatrange(<num>,1,2))))")
(set-info :description "What is the regular expression for a decimal with a precision of 2? The decimal point may be optional, and integers may also be included")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00349 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00008 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00303 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00678 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00172 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00121 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00413 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00430 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00450 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
