(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/116) — gt=not(contain(repeat(<_>,2)))")
(set-info :description "match strings which do not contain two consecutive underscores, i.e., ''__''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00238 0 (size (Pos w00238)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00318 0 (size (Pos w00318)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00382 0 (size (Pos w00382)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00401 0 (size (Pos w00401)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00385 0 (size (Pos w00385))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00444 0 (size (Pos w00444))))))

(check-synth)
