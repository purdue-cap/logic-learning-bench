(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/12) — gt=concat(or(<m0>,<low>),contain(<m1>))")
(set-info :description "lines with the string '!' or lower-case letter before string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00073 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00223 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00242 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00363 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00528 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00492 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00767 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00168 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00079 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
