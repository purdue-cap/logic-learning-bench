(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/71) — gt=star(or(<num>,or(<.>,<,>)))")
(set-info :description "I need a regular expression validation expression that will allow positive number (0-9), '','' and ''.''. It will not allow letter (a - z) or any other letter or symbol except ''.'' and '',''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00499 0 (size (Pos w00499)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00498 0 (size (Pos w00498)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00633 0 (size (Pos w00633))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00146 0 (size (Pos w00146))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 0 (size (Pos w00115))))))

(check-synth)
