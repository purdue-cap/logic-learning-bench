(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/63) — gt=concat(repeatatleast(<num>,1),repeatatleast(concat(<.>,repeatatleast(<num>,1)),1))")
(set-info :description "R1: It is a version number")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00103 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00409 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00102 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00410 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00007 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00043 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00101 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
