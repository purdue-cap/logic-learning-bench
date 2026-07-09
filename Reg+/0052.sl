(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/52) — gt=startwith(repeatatleast(<m0>,6))")
(set-info :description "lines with words starting with string '!' , 6 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01328 0 (size (Pos w01328)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01379 0 (size (Pos w01379)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01544 0 (size (Pos w01544)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01476 0 (size (Pos w01476)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01493 0 (size (Pos w01493)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01462 0 (size (Pos w01462)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01558 0 (size (Pos w01558)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00825 0 (size (Pos w00825))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01554 0 (size (Pos w01554))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01458 0 (size (Pos w01458))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01546 0 (size (Pos w01546))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01052 0 (size (Pos w01052))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
