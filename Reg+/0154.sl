(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/161) — gt=concat(contain(star(<any>)),contain(<num>))")
(set-info :description "lines with zero or more characters before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00011 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00218 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00527 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00167 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00444 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00448 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00982 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00937 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00701 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
