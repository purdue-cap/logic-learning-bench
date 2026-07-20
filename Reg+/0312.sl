(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/116) — gt=not(contain(repeat(<_>,2)))")
(set-info :description "match strings which do not contain two consecutive underscores, i.e., ''__''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00238 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00318 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00382 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00401 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00385 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00444 head tail))))

(check-synth)
