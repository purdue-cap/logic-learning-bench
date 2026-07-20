(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/96) — gt=concat(<let>,contain(contain(<m0>)))")
(set-info :description "lines containing the string '!' with a letter before it")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00574 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01504 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01529 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00928 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01556 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01320 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01374 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00317 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00428 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00018 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01307 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00618 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00859 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
