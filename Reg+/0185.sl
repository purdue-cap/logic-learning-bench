(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/193) — gt=concat(startwith(<any>),contain(<let>))")
(set-info :description "items beginning with a character preceding a letter .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00119 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00229 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00246 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00247 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00548 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00352 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00844 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00218 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00238 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00251 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00114 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
