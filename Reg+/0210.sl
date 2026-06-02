(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/10) — gt=or(not(contain(repeatatleast(<%>,1))),repeatatleast(<any>,4))")
(set-info :description "The value should not contain only '%' and if there is a '%' the length should be more than 3 characters including '%'. '%' can be anywhere in the string (dot is included)")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00155 0 (size (Pos w00155)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00247 0 (size (Pos w00247)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00197 0 (size (Pos w00197)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00237 0 (size (Pos w00237)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00150 0 (size (Pos w00150)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00014 0 (size (Pos w00014)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00138 0 (size (Pos w00138)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00077 0 (size (Pos w00077))))))

(check-synth)
