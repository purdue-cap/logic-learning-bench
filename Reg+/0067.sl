(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/67) — gt=repeatatleast(concat(<m0>,contain(<any>)),4)")
(set-info :description "lines with string '!' followed by a character , 4 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01259 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01536 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01548 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01417 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01515 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01523 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01522 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00082 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01382 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01365 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01418 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01153 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
