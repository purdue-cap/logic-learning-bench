(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/164) — gt=contain(concat(concat(<any>,contain(<vow>)),contain(<m0>)))")
(set-info :description "items with a character preceding a vowel preceding '!' .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00402 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00384 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00551 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00315 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01416 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00948 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01088 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00248 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00249 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00518 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
