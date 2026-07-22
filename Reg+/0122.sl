(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/128) — gt=concat(<let>,contain(repeatatleast(<m0>,2)))")
(set-info :description "the lines that contain a letter coming before the string '!' at least 2 times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00743 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01404 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01132 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00949 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01216 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01316 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01424 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00299 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00799 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00283 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00770 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01309 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00664 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
