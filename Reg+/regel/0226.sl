(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/26) — gt=concat(concat(<0>,<4>),concat(or(<1>,<2>),concat(or(<2>,or(<4>,<6>)),repeat(<num>,7))))")
(set-info :description "R1: can be either ''1'' or ''2''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00564 0 (size (Pos w00564)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00566 0 (size (Pos w00566)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00567 0 (size (Pos w00567))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00571 0 (size (Pos w00571))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00565 0 (size (Pos w00565))))))

(check-synth)
