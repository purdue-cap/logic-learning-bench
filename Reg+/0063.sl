(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/63) — gt=concat(not(<cap>),contain(<m0>))")
(set-info :description "lines without a capital letter before string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00059 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01370 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00995 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01432 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01322 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01275 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01263 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00962 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01010 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01110 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00139 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
