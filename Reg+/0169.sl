(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/176) — gt=contain(or(or(<num>,<low>),<m0>))")
(set-info :description "lines with a number , a lower-case letter , or the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00115 0 (size (Pos w00115)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00172 0 (size (Pos w00172)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00529 0 (size (Pos w00529)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00670 0 (size (Pos w00670)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00170 0 (size (Pos w00170))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00005 0 (size (Pos w00005))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00195 0 (size (Pos w00195))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
