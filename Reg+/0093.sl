(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/96) — gt=concat(<let>,contain(contain(<m0>)))")
(set-info :description "lines containing the string '!' with a letter before it")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00574 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01504 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01529 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00928 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01556 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01320 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01374 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00317 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00428 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00018 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01307 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00618 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00859 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
