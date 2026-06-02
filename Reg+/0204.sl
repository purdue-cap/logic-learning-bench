(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/4) — gt=concat(repeat(<num>,2),concat(<.>,<5>))")
(set-info :description "validate a textbox with decimal number. I need the exact digit like this two digit.single digit. The final single digit is 5 only.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00192 0 (size (Pos w00192)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00200 0 (size (Pos w00200)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00046 0 (size (Pos w00046))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00163 0 (size (Pos w00163))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00198 0 (size (Pos w00198))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00102 0 (size (Pos w00102))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00199 0 (size (Pos w00199))))))

(check-synth)
