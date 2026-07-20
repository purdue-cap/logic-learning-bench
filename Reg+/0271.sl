(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/75) — gt=concat(repeatatleast(<num>,1),star(concat(<,>,repeatatleast(<num>,1))))")
(set-info :description "Need a regular expression to validate number with comma separator.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00495 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00280 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00007 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00270 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00004 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00086 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00408 head tail))))

(check-synth)
