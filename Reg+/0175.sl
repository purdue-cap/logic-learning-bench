(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/182) — gt=contain(or(concat(<any>,contain(<let>)),<m0>))")
(set-info :description "lines containing a character before a letter or '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00215 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00238 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00110 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00405 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00388 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00061 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00219 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00394 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
