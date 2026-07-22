(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/92) — gt=concat(or(concat(repeatrange(<num1-9>,0,2),repeatatleast(concat(<,>,repeat(<num>,3)),1)),or(concat(<num1-9>,star(<num>)),<0>)),optional(concat(<.>,repeatatleast(<num>,1))))")
(set-info :description "I am now in need of a Reg Exp (for validation putsposes) that checks that the user enters a number according to the following rules. no alpha characters. can have decimal. can have commas for the thousands, but the commas must be correctly placed")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00187 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00108 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00271 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00203 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00459 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00173 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00601 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00189 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00494 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00455 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00460 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
