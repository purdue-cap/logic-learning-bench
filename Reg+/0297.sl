(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/101) — gt=concat(or(<A>,or(<B>,<C>)),repeat(<num>,3))")
(set-info :description "The first character should be a designated character like 'A', 'B' or 'C' only. and the next 3 characters should be numbers.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00219 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00223 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00225 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00224 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00226 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00135 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00547 head tail))))

(check-synth)
