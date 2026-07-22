(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/61) — gt=concat(<let>,contain(contain(<cap>)))")
(set-info :description "lines containing a capital after a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00226 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01140 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01413 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01090 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01240 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00297 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00972 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00530 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01149 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01301 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01225 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00037 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
