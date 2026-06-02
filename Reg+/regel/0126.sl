(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/132) — gt=or(or(<vow>,<low>),<any>)")
(set-info :description "lines with words with either vowel , lower-case letter , or character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00041 0 (size (Pos w00041)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00026 0 (size (Pos w00026)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00010 0 (size (Pos w00010)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00175 0 (size (Pos w00175))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00354 0 (size (Pos w00354))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00295 0 (size (Pos w00295))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00475 0 (size (Pos w00475))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00585 0 (size (Pos w00585))))))

(check-synth)
