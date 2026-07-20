(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/83) — gt=contain(or(concat(<m0>,contain(<m1>)),<m2>))")
(set-info :description "lines containing string '!' followed by string '@' or string '#'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00073 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00492 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00341 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00066 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00489 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00322 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00336 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00530 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00851 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00779 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
