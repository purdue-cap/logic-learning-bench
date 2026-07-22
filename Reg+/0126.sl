(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/132) — gt=or(or(<vow>,<low>),<any>)")
(set-info :description "lines with words with either vowel , lower-case letter , or character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00041 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00026 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00010 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00175 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00354 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00295 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00475 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00585 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
