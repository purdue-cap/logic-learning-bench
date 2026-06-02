(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/30) — gt=concat(repeatrange(<let>,1,3),concat(<->,concat(repeatrange(<let>,1,2),concat(< >,repeatrange(<num>,1,4)))))")
(set-info :description "R1: it is 1 - 3 letters")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00390 0 (size (Pos w00390)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00588 0 (size (Pos w00588)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00555 0 (size (Pos w00555)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00389 0 (size (Pos w00389))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00480 0 (size (Pos w00480))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00556 0 (size (Pos w00556))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00520 0 (size (Pos w00520))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00618 0 (size (Pos w00618))))))

(check-synth)
