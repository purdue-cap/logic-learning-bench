(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/71) — gt=star(or(<num>,or(<.>,<,>)))")
(set-info :description "I need a regular expression validation expression that will allow positive number (0-9), '','' and ''.''. It will not allow letter (a - z) or any other letter or symbol except ''.'' and '',''")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (with-model w0267_01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0267_02 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0267_06 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w0267_03 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0267_04 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0267_05 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
