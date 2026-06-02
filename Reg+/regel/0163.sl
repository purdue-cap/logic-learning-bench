(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/170) — gt=contain(or(or(<vow>,<num>),<let>))")
(set-info :description "lines with a vowel , number , or letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00041 0 (size (Pos w00041)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00328 0 (size (Pos w00328)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00153 0 (size (Pos w00153)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00021 0 (size (Pos w00021)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00218 0 (size (Pos w00218)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 0 (size (Pos w00009))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00144 0 (size (Pos w00144))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00820 0 (size (Pos w00820))))))

(check-synth)
