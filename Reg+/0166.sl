(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/173) — gt=concat(repeatatleast(<cap>,4),contain(<m0>))")
(set-info :description "lines with 4 or more capital letters followed by the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00906 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00914 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01050 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01175 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01188 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01294 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01293 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00702 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00170 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00445 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
