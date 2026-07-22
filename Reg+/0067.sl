(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/67) — gt=repeatatleast(concat(<m0>,contain(<any>)),4)")
(set-info :description "lines with string '!' followed by a character , 4 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01259 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01536 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01548 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01417 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01515 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01523 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01522 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00082 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01382 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01365 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01418 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01153 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
