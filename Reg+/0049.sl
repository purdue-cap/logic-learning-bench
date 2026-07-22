(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/49) — gt=concat(repeatatleast(<vow>,5),contain(<low>))")
(set-info :description "lines with a lower case letter after 5 vowels")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01081 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01098 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01121 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01133 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01131 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01107 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01108 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01557 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00942 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01128 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01101 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01102 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00587 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
