(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/63) — gt=concat(repeatatleast(<num>,1),repeatatleast(concat(<.>,repeatatleast(<num>,1)),1))")
(set-info :description "R1: It is a version number")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00103 0 (size (Pos w00103)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00409 0 (size (Pos w00409)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00102 0 (size (Pos w00102)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00410 0 (size (Pos w00410)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00007 0 (size (Pos w00007))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00043 0 (size (Pos w00043))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00101 0 (size (Pos w00101))))))

(check-synth)
