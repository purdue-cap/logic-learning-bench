(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/70) — gt=repeatatleast(startwith(concat(<m0>,contain(<vow>))),1)")
(set-info :description "lines starting with string '!' followed by vowel at least once")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00081 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00084 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00085 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00089 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01463 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01527 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00621 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01157 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01333 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00394 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01312 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
