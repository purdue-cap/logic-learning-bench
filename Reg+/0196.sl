(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/204) — gt=contain(repeatatleast(<low>,5))")
(set-info :description "lines that feature a small letter no less than 5 times and any number more than 5")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01072 0 (size (Pos w01072)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01198 0 (size (Pos w01198)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01167 0 (size (Pos w01167)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01308 0 (size (Pos w01308)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01486 0 (size (Pos w01486)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01073 0 (size (Pos w01073)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01455 0 (size (Pos w01455)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00744 0 (size (Pos w00744))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00935 0 (size (Pos w00935))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01203 0 (size (Pos w01203))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01305 0 (size (Pos w01305))))))

(check-synth)
