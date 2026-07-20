(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/121) — gt=startwith(or(concat(<low>,contain(<m0>)),<let>))")
(set-info :description "lines which are starting with a lower-case letter before the string '!' or a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00307 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00308 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00519 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00978 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00787 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00575 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01117 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00369 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
