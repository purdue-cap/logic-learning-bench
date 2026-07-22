(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/85) — gt=or(repeat(<num>,8),concat(repeat(<let>,2),repeat(<num>,6)))")
(set-info :description "The input box should accept only if either (1) first 2 letters alpha + 6 numeric or (2) 8 numeric")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00476 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00479 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00465 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00485 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00475 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00478 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00420 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
