(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/27) — gt=endwith(concat(<low>,contain(<num>)))")
(set-info :description "lines ending with a lower-case letter followed by a number in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00217 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00355 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00729 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00947 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01069 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00526 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00527 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00010 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00391 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00119 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00132 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00136 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
