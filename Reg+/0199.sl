(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/207) — gt=concat(repeatatleast(<cap>,5),contain(<vow>))")
(set-info :description "lines with a capital letter , 5 or more times before a vowel in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01034 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01048 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01178 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01281 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01276 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01277 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00169 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00441 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
