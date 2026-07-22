(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/58) — gt=repeatatleast(startwith(concat(<cap>,contain(<any>))),1)")
(set-info :description "lines starting in capital letter with a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00712 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00715 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01288 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01537 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00210 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00198 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00204 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00034 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00940 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00092 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00094 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01103 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01104 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
