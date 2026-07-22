(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/129) — gt=repeatatleast(startwith(<m0>),4)")
(set-info :description "lines beginning with the string '!' 4 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01380 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01256 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01146 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00609 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00828 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01330 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01494 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00654 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00835 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01171 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01105 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00955 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01430 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
