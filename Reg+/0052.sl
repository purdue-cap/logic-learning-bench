(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/52) — gt=startwith(repeatatleast(<m0>,6))")
(set-info :description "lines with words starting with string '!' , 6 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01328 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01379 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01544 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01476 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01493 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01462 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01558 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00825 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01554 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01458 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01546 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01052 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
