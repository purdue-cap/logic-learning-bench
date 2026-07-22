(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/57) — gt=concat(concat(optional(<->),repeatatleast(<num>,1)),concat(optional(<,>),repeatrange(<num>,0,2)))")
(set-info :description "allow only numbers, maxmium two decimals, max one comma (,) and one '-' symbol in front of the number (optional)")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00166 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00191 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00254 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00404 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00677 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00307 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00286 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00470 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
