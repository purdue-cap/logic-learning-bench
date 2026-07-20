(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/3) — gt=repeatatleast(or(<num>,or(<&>,or(<|>,or(<.>,or(<(>,or(<)>,< >)))))),1)")
(set-info :description "write regular expression that allows only digits, characters like '&' '|' '.' '(' ')' and spaces")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00704 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00644 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00574 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00696 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00712 head tail))))

(check-synth)
