(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/18) — gt=concat(or(or(<m0>,<cap>),<low>),contain(<any>))")
(set-info :description "a line with a '!'  , a capital  , or a lower case before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00172 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00229 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00067 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00178 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00263 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00064 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00858 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00063 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00312 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
