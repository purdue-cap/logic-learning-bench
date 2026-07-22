(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/201) — gt=concat(repeatatleast(<let>,5),contain(<any>))")
(set-info :description "lines with 5 letters before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01077 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01078 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01079 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01080 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01076 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01032 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01047 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00741 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00934 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
