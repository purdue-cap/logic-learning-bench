(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/88) — gt=concat(repeatatleast(<num>,1),optional(concat(<,>,repeatrange(<num>,1,3))))")
(set-info :description "The value can have at max 3 decimals (but also none) with comma as the separator.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")
(require "./global/models.stackoverflow.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00271 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00181 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00100 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00007 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00338 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00014 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00274 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_stackoverflow (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
