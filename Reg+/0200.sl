(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/208) — gt=repeatatleast(or(<vow>,<any>),6)")
(set-info :description "lines with vowel or character , 6 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w01074 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01081 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01042 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01004 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01080 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01075 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01358 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00115 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00394 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00667 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
