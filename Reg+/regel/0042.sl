(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/42) — gt=concat(<m0>,contain(contain(<any>)))")
(set-info :description "items with '!' preceding a character .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00367 0 (size (Pos w00367)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00334 0 (size (Pos w00334)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00346 0 (size (Pos w00346)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00627 0 (size (Pos w00627)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00317 0 (size (Pos w00317)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00215 0 (size (Pos w00215))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00110 0 (size (Pos w00110))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00426 0 (size (Pos w00426))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00279 0 (size (Pos w00279))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00307 0 (size (Pos w00307))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00386 0 (size (Pos w00386))))))

(check-synth)
