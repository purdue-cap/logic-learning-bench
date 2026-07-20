(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/180) — gt=startwith(concat(<m0>,contain(<m1>)))")
(set-info :description "lines beginning with the string '!' followed by the string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00073 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00329 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00625 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00632 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00843 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00628 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00339 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00079 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00070 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
