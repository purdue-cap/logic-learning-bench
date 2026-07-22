(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/75) — gt=concat(repeatatleast(<num>,1),star(concat(<,>,repeatatleast(<num>,1))))")
(set-info :description "Need a regular expression to validate number with comma separator.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00495 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00280 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00007 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00270 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00004 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00086 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00408 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
