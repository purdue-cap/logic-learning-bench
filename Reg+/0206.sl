(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/6) — gt=concat(repeatatleast(<num>,1),repeat(concat(<:>,or(repeatatleast(<let>,1),repeatatleast(<num>,1))),2))")
(set-info :description "The input will be in the form a colon (:) separated tuple of three values. The first value will be an integer (potentially a long in terms of size/length), with the other two values being either numeric or a string.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00427 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00295 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00504 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00648 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00324 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00207 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00356 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00113 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00482 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00355 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
