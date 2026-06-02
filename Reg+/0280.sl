(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/84) — gt=repeatatleast(or(<let>,or(<num>,< >)),1)")
(set-info :description "I am trying to make a regular expression that validates letters, numbers and spaces ONLY.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00662 0 (size (Pos w00662)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00635 0 (size (Pos w00635)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00560 0 (size (Pos w00560)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00604 0 (size (Pos w00604)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00627 0 (size (Pos w00627))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00614 0 (size (Pos w00614))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00655 0 (size (Pos w00655))))))

(check-synth)
