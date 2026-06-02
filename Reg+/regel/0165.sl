(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/172) — gt=concat(star(<m0>),contain(contain(<vow>)))")
(set-info :description "lines with zero or more of the string '!' before a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00320 0 (size (Pos w00320)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00074 0 (size (Pos w00074)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00633 0 (size (Pos w00633)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00638 0 (size (Pos w00638)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00996 0 (size (Pos w00996)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00830 0 (size (Pos w00830)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00012 0 (size (Pos w00012))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 0 (size (Pos w00115))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00080 0 (size (Pos w00080))))))

(check-synth)
