(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/25) — gt=concat(repeatatleast(<alphanum>,1),star(concat(<,>,repeatatleast(or(<let>,<num>),1))))")
(set-info :description "I need a regular expression that can validate that a string is an alphanumeric comma delimited string.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00670 0 (size (Pos w00670)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00246 0 (size (Pos w00246)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00531 0 (size (Pos w00531)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00699 0 (size (Pos w00699)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00690 0 (size (Pos w00690))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00654 0 (size (Pos w00654))))))

(check-synth)
