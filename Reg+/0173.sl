(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/180) — gt=startwith(concat(<m0>,contain(<m1>)))")
(set-info :description "lines beginning with the string '!' followed by the string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00073 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00329 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00625 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00632 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00843 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00628 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00339 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00070 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
