(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/179) — gt=repeatatleast(or(<vow>,<any>),3)")
(set-info :description "lines with 3 or more of a vowel or character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00530 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00943 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00549 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00394 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00506 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00317 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01075 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00115 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
