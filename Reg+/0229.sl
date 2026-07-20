(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/30) — gt=concat(repeatrange(<let>,1,3),concat(<->,concat(repeatrange(<let>,1,2),concat(< >,repeatrange(<num>,1,4)))))")
(set-info :description "R1: it is 1 - 3 letters")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00390 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00588 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00555 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00389 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00480 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00556 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00520 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00618 head tail))))

(check-synth)
