(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/130) — gt=or(<cap>,<any>)")
(set-info :description "lines that have words with a character or a capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00022 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00033 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00031 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00032 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00115 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00231 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00192 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00140 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00150 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00559 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
