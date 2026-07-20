(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/190) — gt=concat(endwith(<m0>),contain(contain(<cap>)))")
(set-info :description "lines ending with string '!' before containing a capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00074 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00357 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00643 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00493 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00389 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00343 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00827 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00079 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00069 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
