(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/121) — gt=startwith(or(concat(<low>,contain(<m0>)),<let>))")
(set-info :description "lines which are starting with a lower-case letter before the string '!' or a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00307 0 (size (Pos w00307)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00308 0 (size (Pos w00308)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00519 0 (size (Pos w00519)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00978 0 (size (Pos w00978)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00787 0 (size (Pos w00787)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00575 0 (size (Pos w00575)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01117 0 (size (Pos w01117)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00369 0 (size (Pos w00369))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
