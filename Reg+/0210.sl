(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/10) — gt=or(not(contain(repeatatleast(<%>,1))),repeatatleast(<any>,4))")
(set-info :description "The value should not contain only '%' and if there is a '%' the length should be more than 3 characters including '%'. '%' can be anywhere in the string (dot is included)")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00155 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00247 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00197 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00237 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00150 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00014 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00138 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00077 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
