(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/159) — gt=concat(endwith(<m0>),contain(or(or(<m1>,<m2>),<num>)))")
(set-info :description "lines ending with string '!' before either string '@' , string '#' , or number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00073 0 (size (Pos w00073)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00066 0 (size (Pos w00066)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00069 0 (size (Pos w00069)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00492 0 (size (Pos w00492)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00536 0 (size (Pos w00536)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00554 0 (size (Pos w00554)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00821 0 (size (Pos w00821)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00004 0 (size (Pos w00004))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00433 0 (size (Pos w00433))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
