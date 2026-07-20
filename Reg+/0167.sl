(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/174) — gt=contain(or(or(<m0>,<let>),<num>))")
(set-info :description "lines with the string '!' , a letter , or number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00003 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00116 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00079 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00215 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00327 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00430 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00435 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00378 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00656 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00090 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
