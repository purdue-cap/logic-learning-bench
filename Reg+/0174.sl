(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/181) — gt=concat(repeatatleast(<let>,5),contain(<m0>))")
(set-info :description "lines with 5 or more of a letter before string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01076 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01205 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01204 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01201 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01206 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01438 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01460 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00939 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01400 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
