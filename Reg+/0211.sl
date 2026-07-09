(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/11) — gt=repeatatleast(or(<A>,or(<B>,<C>)),1)")
(set-info :description "I want to develop one regular expression which validates only strings which have 'A', 'B' or 'C'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")
(require "./global/models.stackoverflow.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00548 0 (size (Pos w00548)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00507 0 (size (Pos w00507)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00014 0 (size (Pos w00014)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00222 0 (size (Pos w00222)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00310 0 (size (Pos w00310))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00139 0 (size (Pos w00139))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_stackoverflow 0 (size (Pos wempty_stackoverflow))))))

(check-synth)
