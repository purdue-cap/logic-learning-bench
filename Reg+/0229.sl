(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/30) — gt=concat(repeatrange(<let>,1,3),concat(<->,concat(repeatrange(<let>,1,2),concat(< >,repeatrange(<num>,1,4)))))")
(set-info :description "R1: it is 1 - 3 letters")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00390 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00588 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00555 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00389 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00480 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00556 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00520 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00618 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
