(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/43) — gt=concat(<any>,contain(and(<let>,<low>)))")
(set-info :description "lines with a character before a letter and lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00146 0 (size (Pos w00146)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00119 0 (size (Pos w00119)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00158 0 (size (Pos w00158)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00097 0 (size (Pos w00097)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00095 0 (size (Pos w00095)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00093 0 (size (Pos w00093)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00214 0 (size (Pos w00214)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00145 0 (size (Pos w00145))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00281 0 (size (Pos w00281))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00278 0 (size (Pos w00278))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00205 0 (size (Pos w00205))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00077 0 (size (Pos w00077))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00037 0 (size (Pos w00037))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
