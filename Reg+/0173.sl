(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/180) — gt=startwith(concat(<m0>,contain(<m1>)))")
(set-info :description "lines beginning with the string '!' followed by the string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00073 0 (size (Pos w00073)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00329 0 (size (Pos w00329)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00625 0 (size (Pos w00625)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00632 0 (size (Pos w00632)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00843 0 (size (Pos w00843)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00628 0 (size (Pos w00628)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00339 0 (size (Pos w00339)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00070 0 (size (Pos w00070))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
