(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/200) — gt=repeatatleast(or(<low>,<any>),5)")
(set-info :description "lines with lower-case letter or character , 5 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00934 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00937 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00950 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00860 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00861 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00935 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01005 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00665 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
