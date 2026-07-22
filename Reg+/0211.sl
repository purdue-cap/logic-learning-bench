(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/11) — gt=repeatatleast(or(<A>,or(<B>,<C>)),1)")
(set-info :description "I want to develop one regular expression which validates only strings which have 'A', 'B' or 'C'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")
(require "./global/models.stackoverflow.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00548 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00507 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00014 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00222 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00310 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00139 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_stackoverflow (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
