(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/129) — gt=repeatatleast(startwith(<m0>),4)")
(set-info :description "lines beginning with the string '!' 4 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01380 0 (size (Pos w01380)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01256 0 (size (Pos w01256)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01146 0 (size (Pos w01146)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00609 0 (size (Pos w00609)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00828 0 (size (Pos w00828)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01330 0 (size (Pos w01330)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01494 0 (size (Pos w01494)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00654 0 (size (Pos w00654))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00835 0 (size (Pos w00835))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01171 0 (size (Pos w01171))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01105 0 (size (Pos w01105))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00955 0 (size (Pos w00955))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01430 0 (size (Pos w01430))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
