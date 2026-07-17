(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/203) — gt=contain(repeatatleast(<let>,5))")
(set-info :description "lines containing  letter , 5 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00937 0 (size (Pos w00937)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00950 0 (size (Pos w00950)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01017 0 (size (Pos w01017)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01166 0 (size (Pos w01166)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01267 0 (size (Pos w01267)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01089 0 (size (Pos w01089)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01360 0 (size (Pos w01360)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00530 0 (size (Pos w00530))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00750 0 (size (Pos w00750))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
