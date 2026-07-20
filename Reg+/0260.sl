(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/63) — gt=concat(repeatatleast(<num>,1),repeatatleast(concat(<.>,repeatatleast(<num>,1)),1))")
(set-info :description "R1: It is a version number")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00103 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00409 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00102 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00410 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00007 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00043 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00101 head tail))))

(check-synth)
