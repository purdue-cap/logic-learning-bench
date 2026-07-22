(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/106) — gt=contain(concat(<vow>,contain(<any>)))")
(set-info :description "the lines that have a vowel coming before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00226 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00486 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01299 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01412 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01145 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01218 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01168 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00394 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00373 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00454 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00768 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00608 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
