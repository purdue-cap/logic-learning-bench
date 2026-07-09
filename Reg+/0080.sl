(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/81) — gt=concat(<num>,contain(repeatatleast(<let>,2)))")
(set-info :description "items with a numeral preceding a letter , at least twice .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00412 0 (size (Pos w00412)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00413 0 (size (Pos w00413)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01015 0 (size (Pos w01015)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00678 0 (size (Pos w00678)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00869 0 (size (Pos w00869)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00874 0 (size (Pos w00874)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01172 0 (size (Pos w01172)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01242 0 (size (Pos w01242))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01361 0 (size (Pos w01361))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 0 (size (Pos w00382))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00930 0 (size (Pos w00930))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00811 0 (size (Pos w00811))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01555 0 (size (Pos w01555))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
