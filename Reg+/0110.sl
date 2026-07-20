(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/115) — gt=repeatatleast(concat(<num>,contain(<any>)),1)")
(set-info :description "lines with words with a number followed by a character at least once in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00135 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00879 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01466 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01465 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01531 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00883 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01343 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01371 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01287 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01508 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00976 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00374 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01056 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
