(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/92) — gt=concat(or(concat(repeatrange(<num1-9>,0,2),repeatatleast(concat(<,>,repeat(<num>,3)),1)),or(concat(<num1-9>,star(<num>)),<0>)),optional(concat(<.>,repeatatleast(<num>,1))))")
(set-info :description "I am now in need of a Reg Exp (for validation putsposes) that checks that the user enters a number according to the following rules. no alpha characters. can have decimal. can have commas for the thousands, but the commas must be correctly placed")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00187 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00108 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00271 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00203 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00459 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00173 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00601 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00189 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00494 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00455 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00460 head tail))))

(check-synth)
