(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/57) — gt=concat(repeatatleast(<let>,2),contain(<vow>))")
(set-info :description "lines that contain a letter , 2 times or more before a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00524 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00543 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01550 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01540 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00761 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01532 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01369 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00267 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00255 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00376 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00321 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00569 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
