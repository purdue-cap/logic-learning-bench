(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/10) — gt=or(not(contain(repeatatleast(<%>,1))),repeatatleast(<any>,4))")
(set-info :description "The value should not contain only '%' and if there is a '%' the length should be more than 3 characters including '%'. '%' can be anywhere in the string (dot is included)")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00155 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00247 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00197 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00237 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00150 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00014 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00138 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00079 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00077 head tail))))

(check-synth)
