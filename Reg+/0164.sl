(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/171) — gt=startwith(or(<let>,<low>))")
(set-info :description "lines starting with a letter or a lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00021 0 (size (Pos w00021)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00218 0 (size (Pos w00218)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00180 0 (size (Pos w00180)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00530 0 (size (Pos w00530)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 0 (size (Pos w00115))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 0 (size (Pos w00009))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00119 0 (size (Pos w00119))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
