(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/57) — gt=concat(concat(optional(<->),repeatatleast(<num>,1)),concat(optional(<,>),repeatrange(<num>,0,2)))")
(set-info :description "allow only numbers, maxmium two decimals, max one comma (,) and one '-' symbol in front of the number (optional)")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00166 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00191 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00254 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00404 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00677 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00307 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00286 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00470 head tail))))

(check-synth)
