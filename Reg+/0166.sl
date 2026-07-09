(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/173) — gt=concat(repeatatleast(<cap>,4),contain(<m0>))")
(set-info :description "lines with 4 or more capital letters followed by the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00906 0 (size (Pos w00906)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00914 0 (size (Pos w00914)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01050 0 (size (Pos w01050)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01175 0 (size (Pos w01175)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01188 0 (size (Pos w01188)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01294 0 (size (Pos w01294)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01293 0 (size (Pos w01293)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00702 0 (size (Pos w00702))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00170 0 (size (Pos w00170))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00445 0 (size (Pos w00445))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
