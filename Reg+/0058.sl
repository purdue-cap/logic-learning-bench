(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/58) — gt=repeatatleast(startwith(concat(<cap>,contain(<any>))),1)")
(set-info :description "lines starting in capital letter with a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00712 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00715 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01288 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01537 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00210 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00198 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00204 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00034 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00940 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00092 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00094 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01103 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01104 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
