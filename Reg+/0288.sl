(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/92) — gt=concat(or(concat(repeatrange(<num1-9>,0,2),repeatatleast(concat(<,>,repeat(<num>,3)),1)),or(concat(<num1-9>,star(<num>)),<0>)),optional(concat(<.>,repeatatleast(<num>,1))))")
(set-info :description "I am now in need of a Reg Exp (for validation putsposes) that checks that the user enters a number according to the following rules. no alpha characters. can have decimal. can have commas for the thousands, but the commas must be correctly placed")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00187 0 (size (Pos w00187)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00108 0 (size (Pos w00108)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00271 0 (size (Pos w00271)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00203 0 (size (Pos w00203)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00459 0 (size (Pos w00459)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00173 0 (size (Pos w00173)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00601 0 (size (Pos w00601)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00189 0 (size (Pos w00189))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00494 0 (size (Pos w00494))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00455 0 (size (Pos w00455))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00460 0 (size (Pos w00460))))))

(check-synth)
