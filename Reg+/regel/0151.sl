(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/158) — gt=concat(<m0>,contain(or(or(<m1>,<cap>),<let>)))")
(set-info :description "lines with string '!' before either string '@' , capital letter , or letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00073 0 (size (Pos w00073)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00074 0 (size (Pos w00074)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00075 0 (size (Pos w00075)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00080 0 (size (Pos w00080)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00339 0 (size (Pos w00339)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00337 0 (size (Pos w00337)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 0 (size (Pos w00009))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00069 0 (size (Pos w00069))))))

(check-synth)
