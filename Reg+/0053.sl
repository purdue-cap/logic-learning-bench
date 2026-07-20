(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/53) — gt=concat(concat(<any>,contain(<m0>)),contain(<cap>))")
(set-info :description "lines with a character before the string '!' then capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00495 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01419 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00604 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00605 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01336 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00380 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00472 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00471 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00317 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00497 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00491 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00537 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00501 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
