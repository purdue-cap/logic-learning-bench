(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/129) — gt=repeatatleast(startwith(<m0>),4)")
(set-info :description "lines beginning with the string '!' 4 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01380 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01256 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01146 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00609 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00828 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01330 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01494 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00654 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00835 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01171 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01105 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00955 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01430 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
