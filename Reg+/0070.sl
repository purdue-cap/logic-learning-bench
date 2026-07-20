(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/70) — gt=repeatatleast(startwith(concat(<m0>,contain(<vow>))),1)")
(set-info :description "lines starting with string '!' followed by vowel at least once")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00081 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00084 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00085 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00089 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01463 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01527 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00621 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01157 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01333 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01312 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
