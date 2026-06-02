(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/29) — gt=concat(concat(optional(<->),repeatatleast(<num>,1)),star(concat(<,>,concat(optional(<->),repeatatleast(<num>,1)))))")
(set-info :description "Can anyone please help me to find the suitable regular expression to validate a string that has comma separated numbers")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00270 0 (size (Pos w00270)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00645 0 (size (Pos w00645)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00007 0 (size (Pos w00007)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00100 0 (size (Pos w00100)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00211 0 (size (Pos w00211)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00297 0 (size (Pos w00297)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00162 0 (size (Pos w00162)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00347 0 (size (Pos w00347)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00414 0 (size (Pos w00414))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00416 0 (size (Pos w00416))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00603 0 (size (Pos w00603))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00461 0 (size (Pos w00461))))))

(check-synth)
