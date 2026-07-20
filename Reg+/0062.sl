(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/62) — gt=repeatatleast(concat(<low>,contain(<any>)),1)")
(set-info :description "lines with lower-case letter and a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00269 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00766 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01415 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01251 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01136 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01401 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01405 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01019 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00905 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01420 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01340 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01289 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00988 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
