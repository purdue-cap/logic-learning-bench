(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/4) — gt=concat(repeat(<num>,2),concat(<.>,<5>))")
(set-info :description "validate a textbox with decimal number. I need the exact digit like this two digit.single digit. The final single digit is 5 only.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00192 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00200 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00046 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00163 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00198 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00102 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00199 head tail))))

(check-synth)
