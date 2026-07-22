(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/35) — gt=concat(or(or(<m0>,<let>),<any>),contain(<m1>))")
(set-info :description "lines with the string '!' , letter , or character before string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00073 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00223 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00168 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00107 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00522 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00152 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00504 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00154 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00155 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00156 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00153 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00149 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
