(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/184) — gt=concat(or(or(<m0>,<any>),<m1>),contain(<num>))")
(set-info :description "lines that have either a character , the string '!' , or the string '@' before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00218 0 (size (Pos w00218)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00069 0 (size (Pos w00069)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00151 0 (size (Pos w00151)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00114 0 (size (Pos w00114)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00099 0 (size (Pos w00099)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00240 0 (size (Pos w00240)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00538 0 (size (Pos w00538)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
