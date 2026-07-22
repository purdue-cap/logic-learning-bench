(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/113) — gt=contain(or(<any>,<cap>))")
(set-info :description "lines containing character or a capital")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01179 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00076 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00377 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01406 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01446 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00629 (RegLan.Sem r (RegLan.Asp head tail))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
