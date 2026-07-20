(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/91) — gt=repeatatleast(<cap>,6)")
(set-info :description "lines having an upper-case letter numbering at least 6 times or greater")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01425 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01187 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01286 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01195 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01189 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01291 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01062 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01246 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01239 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00953 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01414 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01513 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01440 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
