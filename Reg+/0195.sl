(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/203) — gt=contain(repeatatleast(<let>,5))")
(set-info :description "lines containing  letter , 5 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00937 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00950 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01017 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01166 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01267 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01089 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01360 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00530 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00750 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00394 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
