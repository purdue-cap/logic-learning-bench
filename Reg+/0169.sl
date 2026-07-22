(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/176) — gt=contain(or(or(<num>,<low>),<m0>))")
(set-info :description "lines with a number , a lower-case letter , or the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00115 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00172 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00529 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00670 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00170 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00005 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00195 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
