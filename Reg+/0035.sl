(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/35) — gt=concat(or(or(<m0>,<let>),<any>),contain(<m1>))")
(set-info :description "lines with the string '!' , letter , or character before string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00073 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00223 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00168 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00107 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00522 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00152 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00504 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00154 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00155 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00156 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00153 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00149 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
