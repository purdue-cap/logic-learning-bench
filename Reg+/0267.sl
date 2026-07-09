(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/71) — gt=star(or(<num>,or(<.>,<,>)))")
(set-info :description "I need a regular expression validation expression that will allow positive number (0-9), '','' and ''.''. It will not allow letter (a - z) or any other letter or symbol except ''.'' and '',''")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0267_01 0 (size (Pos w0267_01)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0267_02 0 (size (Pos w0267_02)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0267_06 0 (size (Pos w0267_06)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0267_03 0 (size (Pos w0267_03))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0267_04 0 (size (Pos w0267_04))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0267_05 0 (size (Pos w0267_05))))))

(check-synth)
