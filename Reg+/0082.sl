(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/83) — gt=contain(or(concat(<m0>,contain(<m1>)),<m2>))")
(set-info :description "lines containing string '!' followed by string '@' or string '#'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00073 0 (size (Pos w00073)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00492 0 (size (Pos w00492)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00341 0 (size (Pos w00341)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00066 0 (size (Pos w00066)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00489 0 (size (Pos w00489)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00322 0 (size (Pos w00322)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00336 0 (size (Pos w00336)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00530 0 (size (Pos w00530))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 0 (size (Pos w00382))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00851 0 (size (Pos w00851))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00779 0 (size (Pos w00779))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
