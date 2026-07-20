(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/68) — gt=concat(repeatatleast(<let>,7),contain(<num>))")
(set-info :description "lines with letter , 7 or more times before number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01485 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01423 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01473 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01482 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01479 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01452 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01506 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01087 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01427 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01428 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00027 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00040 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01093 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
