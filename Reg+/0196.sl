(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/204) — gt=contain(repeatatleast(<low>,5))")
(set-info :description "lines that feature a small letter no less than 5 times and any number more than 5")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01072 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01198 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01167 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01308 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01486 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01073 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01455 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00744 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00935 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01203 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01305 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
