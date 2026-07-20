(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/42) — gt=concat(<m0>,contain(contain(<any>)))")
(set-info :description "items with '!' preceding a character .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00065 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00367 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00334 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00346 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00627 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00317 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00215 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00110 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00426 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00279 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00307 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00386 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
