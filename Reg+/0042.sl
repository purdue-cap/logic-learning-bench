(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/42) — gt=concat(<m0>,contain(contain(<any>)))")
(set-info :description "items with '!' preceding a character .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00367 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00334 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00346 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00627 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00317 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00215 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00110 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00426 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00279 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00307 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00386 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
