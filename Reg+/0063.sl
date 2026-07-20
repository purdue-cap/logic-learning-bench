(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/63) — gt=concat(not(<cap>),contain(<m0>))")
(set-info :description "lines without a capital letter before string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00003 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00059 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01370 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00995 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01432 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01322 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01275 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01263 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00962 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01010 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01110 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00139 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
