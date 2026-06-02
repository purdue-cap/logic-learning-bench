(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/80) — gt=repeatatleast(concat(<cap>,contain(<let>)),1)")
(set-info :description "lines with at least capital letter followed by letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00172 0 (size (Pos w00172)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00186 0 (size (Pos w00186)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01035 0 (size (Pos w01035)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01049 0 (size (Pos w01049)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01453 0 (size (Pos w01453)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01500 0 (size (Pos w01500)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01055 0 (size (Pos w01055)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01459 0 (size (Pos w01459))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00244 0 (size (Pos w00244))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 0 (size (Pos w00382))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01407 0 (size (Pos w01407))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00224 0 (size (Pos w00224))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00282 0 (size (Pos w00282))))))

(check-synth)
