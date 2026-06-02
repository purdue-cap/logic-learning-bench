(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/195) — gt=not(startwith(or(<let>,<m0>)))")
(set-info :description "lines not starting with a letter or string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00119 0 (size (Pos w00119)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00149 0 (size (Pos w00149)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00432 0 (size (Pos w00432)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00530 0 (size (Pos w00530))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00218 0 (size (Pos w00218))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00069 0 (size (Pos w00069))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00609 0 (size (Pos w00609))))))

(check-synth)
