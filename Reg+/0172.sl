(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/179) — gt=repeatatleast(or(<vow>,<any>),3)")
(set-info :description "lines with 3 or more of a vowel or character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00530 0 (size (Pos w00530)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00943 0 (size (Pos w00943)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00549 0 (size (Pos w00549)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00506 0 (size (Pos w00506)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00317 0 (size (Pos w00317)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01075 0 (size (Pos w01075)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 0 (size (Pos w00115))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
