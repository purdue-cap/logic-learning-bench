(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/55) — gt=concat(<low>,contain(repeatatleast(or(<m0>,<m1>),1)))")
(set-info :description "lines that contain a lower-case letter followed by the strings '!' or '@' at least once")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00973 0 (size (Pos w00973)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01411 0 (size (Pos w01411)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00974 0 (size (Pos w00974)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01376 0 (size (Pos w01376)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01410 0 (size (Pos w01410)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01373 0 (size (Pos w01373)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01123 0 (size (Pos w01123)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01224 0 (size (Pos w01224))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01249 0 (size (Pos w01249))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01487 0 (size (Pos w01487))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01237 0 (size (Pos w01237))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01342 0 (size (Pos w01342))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01363 0 (size (Pos w01363))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
