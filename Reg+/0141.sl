(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/147) — gt=endwith(or(repeatatleast(<any>,1),<num>))")
(set-info :description "lines ending with a character or a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00052 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00003 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00588 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00567 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00256 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00584 head tail)))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
