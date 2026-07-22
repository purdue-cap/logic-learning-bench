(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/4) — gt=concat(repeat(<num>,2),concat(<.>,<5>))")
(set-info :description "validate a textbox with decimal number. I need the exact digit like this two digit.single digit. The final single digit is 5 only.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00192 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00200 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00046 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00163 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00198 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00102 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00199 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
