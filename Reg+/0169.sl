(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/176) — gt=contain(or(or(<num>,<low>),<m0>))")
(set-info :description "lines with a number , a lower-case letter , or the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00011 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00115 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00172 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00529 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00003 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00065 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00670 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00170 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00005 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00195 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
