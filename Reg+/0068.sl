(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/68) — gt=concat(repeatatleast(<let>,7),contain(<num>))")
(set-info :description "lines with letter , 7 or more times before number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01485 0 (size (Pos w01485)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01423 0 (size (Pos w01423)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01473 0 (size (Pos w01473)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01482 0 (size (Pos w01482)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01479 0 (size (Pos w01479)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01452 0 (size (Pos w01452)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01506 0 (size (Pos w01506)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01087 0 (size (Pos w01087))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01427 0 (size (Pos w01427))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01428 0 (size (Pos w01428))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00027 0 (size (Pos w00027))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00040 0 (size (Pos w00040))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01093 0 (size (Pos w01093))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
