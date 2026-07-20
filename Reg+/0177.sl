(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/184) — gt=concat(or(or(<m0>,<any>),<m1>),contain(<num>))")
(set-info :description "lines that have either a character , the string '!' , or the string '@' before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00218 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00069 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00151 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00114 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00099 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00240 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00538 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00229 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
