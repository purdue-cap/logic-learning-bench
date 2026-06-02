(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/6) — gt=concat(repeatatleast(<num>,1),repeat(concat(<:>,or(repeatatleast(<let>,1),repeatatleast(<num>,1))),2))")
(set-info :description "The input will be in the form a colon (:) separated tuple of three values. The first value will be an integer (potentially a long in terms of size/length), with the other two values being either numeric or a string.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00427 0 (size (Pos w00427)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00295 0 (size (Pos w00295)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00504 0 (size (Pos w00504)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00648 0 (size (Pos w00648)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00324 0 (size (Pos w00324))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00207 0 (size (Pos w00207))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00356 0 (size (Pos w00356))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00113 0 (size (Pos w00113))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00482 0 (size (Pos w00482))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00355 0 (size (Pos w00355))))))

(check-synth)
