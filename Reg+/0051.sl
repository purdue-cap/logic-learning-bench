(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/51) — gt=endwith(repeatatleast(concat(<low>,contain(<m0>)),1))")
(set-info :description "lines ending with a lower-case letter followed by the string '!' at least once in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00215 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01510 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01524 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01484 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01518 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01296 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01063 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01184 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00091 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00105 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00203 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01468 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
