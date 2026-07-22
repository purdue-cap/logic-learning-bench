(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/189) — gt=concat(<num>,contain(or(or(<m0>,<any>),<m1>)))")
(set-info :description "lines with a number before string '!' or '@' or a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00110 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00129 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00119 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00138 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00142 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00409 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00420 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00012 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
