(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/173) — gt=concat(repeatatleast(<cap>,4),contain(<m0>))")
(set-info :description "lines with 4 or more capital letters followed by the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00906 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00914 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01050 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01175 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01188 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01294 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01293 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00702 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00170 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00445 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
