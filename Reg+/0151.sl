(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/158) — gt=concat(<m0>,contain(or(or(<m1>,<cap>),<let>)))")
(set-info :description "lines with string '!' before either string '@' , capital letter , or letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00073 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00074 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00075 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00079 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00080 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00339 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00337 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00069 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
