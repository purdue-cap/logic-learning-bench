(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/49) — gt=concat(repeatatleast(<vow>,5),contain(<low>))")
(set-info :description "lines with a lower case letter after 5 vowels")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01081 0 (size (Pos w01081)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01098 0 (size (Pos w01098)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01121 0 (size (Pos w01121)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01133 0 (size (Pos w01133)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01131 0 (size (Pos w01131)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01107 0 (size (Pos w01107)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01108 0 (size (Pos w01108)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01557 0 (size (Pos w01557))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00942 0 (size (Pos w00942))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01128 0 (size (Pos w01128))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01101 0 (size (Pos w01101))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01102 0 (size (Pos w01102))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00587 0 (size (Pos w00587))))))

(check-synth)
