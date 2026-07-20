(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/10) — gt=contain(or(<low>,<any>))")
(set-info :description "lines with a lower case letter or character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00009 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00230 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00506 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00500 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00002 head tail)))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
