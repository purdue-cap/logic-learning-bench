(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/189) — gt=concat(<num>,contain(or(or(<m0>,<any>),<m1>)))")
(set-info :description "lines with a number before string '!' or '@' or a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00110 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00129 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00119 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00138 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00142 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00409 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00420 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00012 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
