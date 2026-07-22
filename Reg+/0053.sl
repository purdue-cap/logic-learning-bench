(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/53) — gt=concat(concat(<any>,contain(<m0>)),contain(<cap>))")
(set-info :description "lines with a character before the string '!' then capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00495 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01419 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00604 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00605 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01336 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00380 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00472 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00471 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00317 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00497 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00491 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00537 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00501 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
