(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/52) — gt=startwith(repeatatleast(<m0>,6))")
(set-info :description "lines with words starting with string '!' , 6 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01328 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01379 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01544 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01476 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01493 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01462 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01558 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00825 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01554 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01458 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01546 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01052 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
