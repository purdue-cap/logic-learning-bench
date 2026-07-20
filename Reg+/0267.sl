(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/71) — gt=star(or(<num>,or(<.>,<,>)))")
(set-info :description "I need a regular expression validation expression that will allow positive number (0-9), '','' and ''.''. It will not allow letter (a - z) or any other letter or symbol except ''.'' and '',''")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0267_01 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0267_02 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0267_06 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w0267_03 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0267_04 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0267_05 head tail))))

(check-synth)
