(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/81) — gt=concat(<num>,contain(repeatatleast(<let>,2)))")
(set-info :description "items with a numeral preceding a letter , at least twice .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00412 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00413 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01015 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00678 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00869 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00874 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01172 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01242 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01361 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00930 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00811 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01555 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
