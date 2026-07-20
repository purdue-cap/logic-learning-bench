(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/82) — gt=repeatatleast(or(<m0>,<low>),1)")
(set-info :description "lines with the string '!' containing only a lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00215 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00319 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00828 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00635 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00636 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00074 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01525 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00162 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00110 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00069 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00493 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
