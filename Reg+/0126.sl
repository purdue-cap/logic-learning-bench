(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/132) — gt=or(or(<vow>,<low>),<any>)")
(set-info :description "lines with words with either vowel , lower-case letter , or character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00020 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00019 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00041 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00026 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00010 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00229 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00175 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00354 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00295 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00475 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00585 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
