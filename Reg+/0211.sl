(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/11) — gt=repeatatleast(or(<A>,or(<B>,<C>)),1)")
(set-info :description "I want to develop one regular expression which validates only strings which have 'A', 'B' or 'C'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")
(require "./global/models.stackoverflow.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00548 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00507 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00014 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00222 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00310 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00139 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_stackoverflow head tail))))

(check-synth)
