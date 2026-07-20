(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/171) — gt=startwith(or(<let>,<low>))")
(set-info :description "lines starting with a letter or a lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00020 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00021 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00039 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00218 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00180 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00530 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00119 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
