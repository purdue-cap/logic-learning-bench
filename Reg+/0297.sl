(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/101) — gt=concat(or(<A>,or(<B>,<C>)),repeat(<num>,3))")
(set-info :description "The first character should be a designated character like 'A', 'B' or 'C' only. and the next 3 characters should be numbers.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00219 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00223 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00225 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00224 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00226 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00135 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00547 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
