(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/57) — gt=concat(concat(optional(<->),repeatatleast(<num>,1)),concat(optional(<,>),repeatrange(<num>,0,2)))")
(set-info :description "allow only numbers, maxmium two decimals, max one comma (,) and one '-' symbol in front of the number (optional)")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00166 0 (size (Pos w00166)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00191 0 (size (Pos w00191)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00254 0 (size (Pos w00254)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00404 0 (size (Pos w00404)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00677 0 (size (Pos w00677)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00307 0 (size (Pos w00307))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00286 0 (size (Pos w00286))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00470 0 (size (Pos w00470))))))

(check-synth)
