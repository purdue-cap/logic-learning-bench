(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/72) — gt=repeatatleast(concat(<low>,contain(<vow>)),1)")
(set-info :description "lines with a lower-case letter followed by a vowel at least once in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00253 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00550 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00763 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00979 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01366 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01227 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01226 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01096 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01310 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00041 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01421 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01091 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01169 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
