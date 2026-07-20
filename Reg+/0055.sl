(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/55) — gt=concat(<low>,contain(repeatatleast(or(<m0>,<m1>),1)))")
(set-info :description "lines that contain a lower-case letter followed by the strings '!' or '@' at least once")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00973 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01411 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00974 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01376 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01410 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01373 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01123 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01224 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01249 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01487 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01237 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01342 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01363 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
