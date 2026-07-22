(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/55) — gt=concat(<low>,contain(repeatatleast(or(<m0>,<m1>),1)))")
(set-info :description "lines that contain a lower-case letter followed by the strings '!' or '@' at least once")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00973 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01411 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00974 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01376 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01410 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01373 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01123 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01224 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01249 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01487 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01237 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01342 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01363 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
