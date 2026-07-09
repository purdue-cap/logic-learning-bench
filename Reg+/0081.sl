(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/82) — gt=repeatatleast(or(<m0>,<low>),1)")
(set-info :description "lines with the string '!' containing only a lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00215 0 (size (Pos w00215)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00319 0 (size (Pos w00319)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00828 0 (size (Pos w00828)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00635 0 (size (Pos w00635)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00636 0 (size (Pos w00636)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00074 0 (size (Pos w00074))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01525 0 (size (Pos w01525))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00162 0 (size (Pos w00162))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00110 0 (size (Pos w00110))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00069 0 (size (Pos w00069))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00493 0 (size (Pos w00493))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
