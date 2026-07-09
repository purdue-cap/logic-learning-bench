(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/189) — gt=concat(<num>,contain(or(or(<m0>,<any>),<m1>)))")
(set-info :description "lines with a number before string '!' or '@' or a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00110 0 (size (Pos w00110)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00129 0 (size (Pos w00129)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00119 0 (size (Pos w00119)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00138 0 (size (Pos w00138)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00142 0 (size (Pos w00142)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00409 0 (size (Pos w00409)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00420 0 (size (Pos w00420)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00012 0 (size (Pos w00012))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
