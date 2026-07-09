(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/88) — gt=concat(repeatatleast(<num>,1),optional(concat(<,>,repeatrange(<num>,1,3))))")
(set-info :description "The value can have at max 3 decimals (but also none) with comma as the separator.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")
(require "./global/models.stackoverflow.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00271 0 (size (Pos w00271)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00181 0 (size (Pos w00181)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00100 0 (size (Pos w00100)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00007 0 (size (Pos w00007)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00338 0 (size (Pos w00338))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00014 0 (size (Pos w00014))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00274 0 (size (Pos w00274))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_stackoverflow 0 (size (Pos wempty_stackoverflow))))))

(check-synth)
