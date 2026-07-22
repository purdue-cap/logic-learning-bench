(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/116) — gt=not(contain(repeat(<_>,2)))")
(set-info :description "match strings which do not contain two consecutive underscores, i.e., ''__''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00238 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00318 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00382 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00401 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00385 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00444 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
