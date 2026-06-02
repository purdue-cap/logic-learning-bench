(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/3) — gt=repeatatleast(or(<num>,or(<&>,or(<|>,or(<.>,or(<(>,or(<)>,< >)))))),1)")
(set-info :description "write regular expression that allows only digits, characters like '&' '|' '.' '(' ')' and spaces")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00704 0 (size (Pos w00704)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00644 0 (size (Pos w00644)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00574 0 (size (Pos w00574))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00696 0 (size (Pos w00696))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00712 0 (size (Pos w00712))))))

(check-synth)
