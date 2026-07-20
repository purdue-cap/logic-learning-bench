(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/61) — gt=concat(<let>,contain(contain(<cap>)))")
(set-info :description "lines containing a capital after a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00226 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01140 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01413 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01090 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01240 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00297 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00972 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00530 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01149 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01301 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01225 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00037 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
