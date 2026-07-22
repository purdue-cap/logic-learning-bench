(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/29) — gt=concat(concat(optional(<->),repeatatleast(<num>,1)),star(concat(<,>,concat(optional(<->),repeatatleast(<num>,1)))))")
(set-info :description "Can anyone please help me to find the suitable regular expression to validate a string that has comma separated numbers")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00270 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00645 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00007 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00100 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00211 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00297 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00162 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00347 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00414 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00416 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00603 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00461 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
