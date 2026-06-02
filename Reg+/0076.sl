(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/77) — gt=endwith(or(<m0>,<m1>))")
(set-info :description "lines with words ending in string '!' or '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00811 0 (size (Pos w00811)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00812 0 (size (Pos w00812)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01490 0 (size (Pos w01490)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01491 0 (size (Pos w01491)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00335 0 (size (Pos w00335)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00431 0 (size (Pos w00431)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01492 0 (size (Pos w01492))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00639 0 (size (Pos w00639))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00697 0 (size (Pos w00697))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01541 0 (size (Pos w01541))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01441 0 (size (Pos w01441))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00631 0 (size (Pos w00631))))))

(check-synth)
