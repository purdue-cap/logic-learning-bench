(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/175) — gt=concat(contain(<num>),contain(<m0>))")
(set-info :description "lines with a number followed by the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00110 0 (size (Pos w00110)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00125 0 (size (Pos w00125)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00390 0 (size (Pos w00390)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00389 0 (size (Pos w00389)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00505 0 (size (Pos w00505)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00455 0 (size (Pos w00455)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00822 0 (size (Pos w00822)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00397 0 (size (Pos w00397))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
