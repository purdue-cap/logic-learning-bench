(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/6) — gt=not(or(or(<vow>,<any>),<let>))")
(set-info :description "lines that do not contain a character , a vowel , or a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00041 0 (size (Pos w00041))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00044 0 (size (Pos w00044))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00031 0 (size (Pos w00031))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 0 (size (Pos w00009))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))

(check-synth)
