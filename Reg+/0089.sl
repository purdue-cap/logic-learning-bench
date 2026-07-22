(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/91) — gt=repeatatleast(<cap>,6)")
(set-info :description "lines having an upper-case letter numbering at least 6 times or greater")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01425 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01187 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01286 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01195 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01189 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01291 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01062 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01246 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01239 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00953 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01414 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01513 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01440 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
