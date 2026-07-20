(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/43) — gt=concat(<any>,contain(and(<let>,<low>)))")
(set-info :description "lines with a character before a letter and lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00146 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00119 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00158 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00097 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00095 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00093 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00214 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00145 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00281 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00278 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00205 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00077 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00037 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
