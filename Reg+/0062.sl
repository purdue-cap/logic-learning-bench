(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/62) — gt=repeatatleast(concat(<low>,contain(<any>)),1)")
(set-info :description "lines with lower-case letter and a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00269 0 (size (Pos w00269)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00766 0 (size (Pos w00766)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01415 0 (size (Pos w01415)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01251 0 (size (Pos w01251)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01136 0 (size (Pos w01136)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01401 0 (size (Pos w01401)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01405 0 (size (Pos w01405)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01019 0 (size (Pos w01019))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00905 0 (size (Pos w00905))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01420 0 (size (Pos w01420))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01340 0 (size (Pos w01340))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01289 0 (size (Pos w01289))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00988 0 (size (Pos w00988))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
