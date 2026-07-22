(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/3) — gt=repeatatleast(or(<num>,or(<&>,or(<|>,or(<.>,or(<(>,or(<)>,< >)))))),1)")
(set-info :description "write regular expression that allows only digits, characters like '&' '|' '.' '(' ')' and spaces")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00704 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00644 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00574 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00696 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00712 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
