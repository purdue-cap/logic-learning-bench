(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/185) — gt=contain(or(or(<m0>,<m1>),<num>))")
(set-info :description "lines containing the string '!' , '@' , or number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00003 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00019 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00073 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00069 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00432 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00512 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00021 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
