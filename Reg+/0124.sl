(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/130) — gt=or(<cap>,<any>)")
(set-info :description "lines that have words with a character or a capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00022 0 (size (Pos w00022)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00033 0 (size (Pos w00033)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00031 0 (size (Pos w00031)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00032 0 (size (Pos w00032)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 0 (size (Pos w00115))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00231 0 (size (Pos w00231))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00192 0 (size (Pos w00192))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00140 0 (size (Pos w00140))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00150 0 (size (Pos w00150))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00559 0 (size (Pos w00559))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
