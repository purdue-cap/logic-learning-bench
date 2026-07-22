(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/184) — gt=concat(or(or(<m0>,<any>),<m1>),contain(<num>))")
(set-info :description "lines that have either a character , the string '!' , or the string '@' before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00218 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00069 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00151 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00114 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00099 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00240 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00538 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
