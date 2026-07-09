(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/128) — gt=concat(<let>,contain(repeatatleast(<m0>,2)))")
(set-info :description "the lines that contain a letter coming before the string '!' at least 2 times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00743 0 (size (Pos w00743)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01404 0 (size (Pos w01404)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01132 0 (size (Pos w01132)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00949 0 (size (Pos w00949)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01216 0 (size (Pos w01216)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01316 0 (size (Pos w01316)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01424 0 (size (Pos w01424)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00299 0 (size (Pos w00299))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00799 0 (size (Pos w00799))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00283 0 (size (Pos w00283))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00770 0 (size (Pos w00770))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01309 0 (size (Pos w01309))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00664 0 (size (Pos w00664))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
