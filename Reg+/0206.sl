(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/6) — gt=concat(repeatatleast(<num>,1),repeat(concat(<:>,or(repeatatleast(<let>,1),repeatatleast(<num>,1))),2))")
(set-info :description "The input will be in the form a colon (:) separated tuple of three values. The first value will be an integer (potentially a long in terms of size/length), with the other two values being either numeric or a string.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00427 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00295 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00504 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00648 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00324 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00207 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00356 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00113 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00482 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00355 head tail))))

(check-synth)
