(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/68) — gt=concat(repeatatleast(<let>,7),contain(<num>))")
(set-info :description "lines with letter , 7 or more times before number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01485 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01423 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01473 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01482 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01479 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01452 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01506 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01087 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01427 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01428 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00027 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00040 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01093 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
