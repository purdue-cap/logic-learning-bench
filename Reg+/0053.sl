(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/53) — gt=concat(concat(<any>,contain(<m0>)),contain(<cap>))")
(set-info :description "lines with a character before the string '!' then capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00495 0 (size (Pos w00495)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01419 0 (size (Pos w01419)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00604 0 (size (Pos w00604)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00605 0 (size (Pos w00605)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01336 0 (size (Pos w01336)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00380 0 (size (Pos w00380)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00472 0 (size (Pos w00472)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00471 0 (size (Pos w00471))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00317 0 (size (Pos w00317))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00497 0 (size (Pos w00497))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00491 0 (size (Pos w00491))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00537 0 (size (Pos w00537))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00501 0 (size (Pos w00501))))))

(check-synth)
