(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/51) — gt=endwith(repeatatleast(concat(<low>,contain(<m0>)),1))")
(set-info :description "lines ending with a lower-case letter followed by the string '!' at least once in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00215 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01510 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01524 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01484 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01518 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01296 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01063 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01184 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00091 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00105 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00203 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01468 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
