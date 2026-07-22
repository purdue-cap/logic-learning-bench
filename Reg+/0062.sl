(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/62) — gt=repeatatleast(concat(<low>,contain(<any>)),1)")
(set-info :description "lines with lower-case letter and a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00269 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00766 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01415 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01251 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01136 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01401 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01405 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01019 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00905 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01420 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01340 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01289 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00988 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
