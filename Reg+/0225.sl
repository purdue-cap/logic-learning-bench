(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/25) — gt=concat(repeatatleast(<alphanum>,1),star(concat(<,>,repeatatleast(or(<let>,<num>),1))))")
(set-info :description "I need a regular expression that can validate that a string is an alphanumeric comma delimited string.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00670 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00246 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00531 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00699 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00690 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00654 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
