(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/164) — gt=contain(concat(concat(<any>,contain(<vow>)),contain(<m0>)))")
(set-info :description "items with a character preceding a vowel preceding '!' .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00402 0 (size (Pos w00402)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00384 0 (size (Pos w00384)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00551 0 (size (Pos w00551)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00315 0 (size (Pos w00315)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01416 0 (size (Pos w01416)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00948 0 (size (Pos w00948)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01088 0 (size (Pos w01088)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 0 (size (Pos w00039))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00248 0 (size (Pos w00248))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00249 0 (size (Pos w00249))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00518 0 (size (Pos w00518))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
