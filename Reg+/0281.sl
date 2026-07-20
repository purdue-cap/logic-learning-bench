(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/85) — gt=or(repeat(<num>,8),concat(repeat(<let>,2),repeat(<num>,6)))")
(set-info :description "The input box should accept only if either (1) first 2 letters alpha + 6 numeric or (2) 8 numeric")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00476 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00479 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00465 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00485 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00475 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00478 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00420 head tail))))

(check-synth)
