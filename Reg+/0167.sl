(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/174) — gt=contain(or(or(<m0>,<let>),<num>))")
(set-info :description "lines with the string '!' , a letter , or number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00116 0 (size (Pos w00116)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00215 0 (size (Pos w00215)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00327 0 (size (Pos w00327)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00430 0 (size (Pos w00430)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00435 0 (size (Pos w00435))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00378 0 (size (Pos w00378))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00656 0 (size (Pos w00656))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00090 0 (size (Pos w00090))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
