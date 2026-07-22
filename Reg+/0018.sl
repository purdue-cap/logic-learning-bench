(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/18) — gt=concat(or(or(<m0>,<cap>),<low>),contain(<any>))")
(set-info :description "a line with a '!'  , a capital  , or a lower case before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00172 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00067 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00178 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00263 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00064 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00115 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00009 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00858 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00063 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00312 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
