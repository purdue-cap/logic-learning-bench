(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/164) — gt=contain(concat(concat(<any>,contain(<vow>)),contain(<m0>)))")
(set-info :description "items with a character preceding a vowel preceding '!' .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00402 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00384 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00551 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00315 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01416 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00948 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01088 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00248 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00249 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00518 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
