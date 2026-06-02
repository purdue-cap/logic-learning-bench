(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/85) — gt=or(repeat(<num>,8),concat(repeat(<let>,2),repeat(<num>,6)))")
(set-info :description "The input box should accept only if either (1) first 2 letters alpha + 6 numeric or (2) 8 numeric")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00476 0 (size (Pos w00476)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00479 0 (size (Pos w00479)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00465 0 (size (Pos w00465)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00485 0 (size (Pos w00485)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00475 0 (size (Pos w00475))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00478 0 (size (Pos w00478))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00420 0 (size (Pos w00420))))))

(check-synth)
