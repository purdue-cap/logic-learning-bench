(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/81) — gt=concat(<num>,contain(repeatatleast(<let>,2)))")
(set-info :description "items with a numeral preceding a letter , at least twice .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00412 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00413 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01015 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00678 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00869 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00874 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01172 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01242 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01361 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00382 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00930 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00811 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01555 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
