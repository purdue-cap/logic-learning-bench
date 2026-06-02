(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/101) — gt=concat(or(<A>,or(<B>,<C>)),repeat(<num>,3))")
(set-info :description "The first character should be a designated character like 'A', 'B' or 'C' only. and the next 3 characters should be numbers.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00219 0 (size (Pos w00219)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00223 0 (size (Pos w00223)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00225 0 (size (Pos w00225)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00224 0 (size (Pos w00224)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00226 0 (size (Pos w00226))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00135 0 (size (Pos w00135))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00547 0 (size (Pos w00547))))))

(check-synth)
