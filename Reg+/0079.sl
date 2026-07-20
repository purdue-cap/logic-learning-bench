(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/80) — gt=repeatatleast(concat(<cap>,contain(<let>)),1)")
(set-info :description "lines with at least capital letter followed by letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00172 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00186 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01035 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01049 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01453 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01500 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01055 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01459 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00244 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01407 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00224 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00282 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
