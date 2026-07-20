(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/113) — gt=contain(or(<any>,<cap>))")
(set-info :description "lines containing character or a capital")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00020 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01179 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00076 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00377 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01406 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01446 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00629 head tail)))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
