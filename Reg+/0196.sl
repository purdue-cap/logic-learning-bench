(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/204) — gt=contain(repeatatleast(<low>,5))")
(set-info :description "lines that feature a small letter no less than 5 times and any number more than 5")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01072 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01198 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01167 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01308 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01486 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01073 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01455 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00744 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00935 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01203 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01305 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
