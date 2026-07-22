(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/115) — gt=repeatatleast(concat(<num>,contain(<any>)),1)")
(set-info :description "lines with words with a number followed by a character at least once in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00135 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00879 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01466 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01465 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01531 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00883 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01343 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01371 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01287 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01508 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00976 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00374 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01056 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
