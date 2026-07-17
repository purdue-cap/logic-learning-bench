(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/190) — gt=concat(endwith(<m0>),contain(contain(<cap>)))")
(set-info :description "lines ending with string '!' before containing a capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00074 0 (size (Pos w00074)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00357 0 (size (Pos w00357)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00643 0 (size (Pos w00643)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00493 0 (size (Pos w00493)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00389 0 (size (Pos w00389)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00343 0 (size (Pos w00343)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00827 0 (size (Pos w00827)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00069 0 (size (Pos w00069))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
