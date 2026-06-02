(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/109) — gt=startwith(or(<vow>,<m0>))")
(set-info :description "lines starting with a vowel or string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00215 0 (size (Pos w00215)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01511 0 (size (Pos w01511)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01254 0 (size (Pos w01254)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01435 0 (size (Pos w01435)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00607 0 (size (Pos w00607)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00580 0 (size (Pos w00580))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01159 0 (size (Pos w01159))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01375 0 (size (Pos w01375))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01456 0 (size (Pos w01456))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00698 0 (size (Pos w00698))))))

(check-synth)
