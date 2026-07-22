(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/188) — gt=repeatatleast(or(<vow>,<m0>),7)")
(set-info :description "lines with at least 7 of  the string '!' or a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01146 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01255 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01302 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01199 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01300 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01208 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01278 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00984 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01081 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01041 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
