(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/128) — gt=concat(<let>,contain(repeatatleast(<m0>,2)))")
(set-info :description "the lines that contain a letter coming before the string '!' at least 2 times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00743 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01404 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01132 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00949 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01216 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01316 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01424 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00299 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00799 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00283 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00770 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01309 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00664 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
