(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/121) — gt=startwith(or(concat(<low>,contain(<m0>)),<let>))")
(set-info :description "lines which are starting with a lower-case letter before the string '!' or a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00307 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00308 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00519 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00978 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00787 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00575 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01117 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00369 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
