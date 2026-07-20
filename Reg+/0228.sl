(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/29) — gt=concat(concat(optional(<->),repeatatleast(<num>,1)),star(concat(<,>,concat(optional(<->),repeatatleast(<num>,1)))))")
(set-info :description "Can anyone please help me to find the suitable regular expression to validate a string that has comma separated numbers")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00270 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00645 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00007 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00100 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00211 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00297 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00162 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00347 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00414 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00416 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00603 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00461 head tail))))

(check-synth)
