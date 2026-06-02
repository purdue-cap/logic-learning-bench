(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/96) — gt=concat(<let>,contain(contain(<m0>)))")
(set-info :description "lines containing the string '!' with a letter before it")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00574 0 (size (Pos w00574)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01504 0 (size (Pos w01504)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01529 0 (size (Pos w01529)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00928 0 (size (Pos w00928)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01556 0 (size (Pos w01556)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01320 0 (size (Pos w01320)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01374 0 (size (Pos w01374)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00317 0 (size (Pos w00317))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00428 0 (size (Pos w00428))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00018 0 (size (Pos w00018))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01307 0 (size (Pos w01307))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00618 0 (size (Pos w00618))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00859 0 (size (Pos w00859))))))

(check-synth)
