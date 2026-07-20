(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/106) — gt=contain(concat(<vow>,contain(<any>)))")
(set-info :description "the lines that have a vowel coming before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00226 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00486 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01299 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01412 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01145 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01218 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01168 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00373 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00454 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00768 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00608 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
