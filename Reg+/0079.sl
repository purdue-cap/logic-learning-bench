(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/80) — gt=repeatatleast(concat(<cap>,contain(<let>)),1)")
(set-info :description "lines with at least capital letter followed by letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00172 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00186 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01035 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01049 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01453 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01500 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01055 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01459 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00244 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00382 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01407 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00224 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00282 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
