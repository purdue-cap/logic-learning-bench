(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/175) — gt=concat(contain(<num>),contain(<m0>))")
(set-info :description "lines with a number followed by the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00110 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00125 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00390 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00389 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00505 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00455 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00822 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00397 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
