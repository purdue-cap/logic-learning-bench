(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/88) — gt=concat(repeatatleast(<num>,1),optional(concat(<,>,repeatrange(<num>,1,3))))")
(set-info :description "The value can have at max 3 decimals (but also none) with comma as the separator.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")
(require "./global/models.stackoverflow.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00271 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00181 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00100 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00007 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00338 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00014 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00274 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_stackoverflow head tail))))

(check-synth)
