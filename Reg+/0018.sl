(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/18) — gt=concat(or(or(<m0>,<cap>),<low>),contain(<any>))")
(set-info :description "a line with a '!'  , a capital  , or a lower case before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00172 0 (size (Pos w00172)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00067 0 (size (Pos w00067)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00178 0 (size (Pos w00178)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00263 0 (size (Pos w00263)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00064 0 (size (Pos w00064)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 0 (size (Pos w00115))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 0 (size (Pos w00009))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00858 0 (size (Pos w00858))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00063 0 (size (Pos w00063))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00312 0 (size (Pos w00312))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
