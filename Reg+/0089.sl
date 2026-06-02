(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/91) — gt=repeatatleast(<cap>,6)")
(set-info :description "lines having an upper-case letter numbering at least 6 times or greater")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01425 0 (size (Pos w01425)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01187 0 (size (Pos w01187)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01286 0 (size (Pos w01286)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01195 0 (size (Pos w01195)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01189 0 (size (Pos w01189)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01291 0 (size (Pos w01291)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01062 0 (size (Pos w01062)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01246 0 (size (Pos w01246))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01239 0 (size (Pos w01239))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00953 0 (size (Pos w00953))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01414 0 (size (Pos w01414))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01513 0 (size (Pos w01513))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01440 0 (size (Pos w01440))))))

(check-synth)
