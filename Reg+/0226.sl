(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/26) — gt=concat(concat(<0>,<4>),concat(or(<1>,<2>),concat(or(<2>,or(<4>,<6>)),repeat(<num>,7))))")
(set-info :description "R1: can be either ''1'' or ''2''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00564 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00566 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00567 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00571 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00565 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
