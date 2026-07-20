(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/159) — gt=concat(endwith(<m0>),contain(or(or(<m1>,<m2>),<num>)))")
(set-info :description "lines ending with string '!' before either string '@' , string '#' , or number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00073 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00066 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00069 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00492 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00536 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00554 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00821 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00004 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00433 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
