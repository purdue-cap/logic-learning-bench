(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/83) — gt=contain(or(concat(<m0>,contain(<m1>)),<m2>))")
(set-info :description "lines containing string '!' followed by string '@' or string '#'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00073 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00492 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00341 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00066 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00489 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00322 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00336 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00530 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00382 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00851 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00779 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
