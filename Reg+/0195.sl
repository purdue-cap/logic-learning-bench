(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/203) — gt=contain(repeatatleast(<let>,5))")
(set-info :description "lines containing  letter , 5 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00937 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00950 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01017 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01166 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01267 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01089 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01360 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00530 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00750 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
