(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/130) — gt=or(<cap>,<any>)")
(set-info :description "lines that have words with a character or a capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00022 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00033 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00019 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00031 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00032 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00231 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00192 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00140 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00150 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00559 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
