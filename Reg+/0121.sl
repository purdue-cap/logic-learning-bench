(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/127) — gt=concat(star(<cap>),contain(<m0>))")
(set-info :description "lines with words with zero or more capital letters before the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00533 0 (size (Pos w00533)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00709 0 (size (Pos w00709)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01397 0 (size (Pos w01397)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01355 0 (size (Pos w01355)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01245 0 (size (Pos w01245)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00961 0 (size (Pos w00961)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00719 0 (size (Pos w00719)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00416 0 (size (Pos w00416))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00589 0 (size (Pos w00589))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00773 0 (size (Pos w00773))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00804 0 (size (Pos w00804))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00301 0 (size (Pos w00301))))))

(check-synth)
