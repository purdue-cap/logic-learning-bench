(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/25) — gt=concat(repeatatleast(<alphanum>,1),star(concat(<,>,repeatatleast(or(<let>,<num>),1))))")
(set-info :description "I need a regular expression that can validate that a string is an alphanumeric comma delimited string.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00670 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00246 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00531 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00699 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00690 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00654 head tail))))

(check-synth)
