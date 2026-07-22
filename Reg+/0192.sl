(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/200) — gt=repeatatleast(or(<low>,<any>),5)")
(set-info :description "lines with lower-case letter or character , 5 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00934 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00937 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00950 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00860 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00861 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00935 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01005 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00115 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00394 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00665 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
