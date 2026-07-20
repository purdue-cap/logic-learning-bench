(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/16) — gt=concat(<num1-9>,concat(<@>,concat(repeatrange(<num>,1,3),<%>)))")
(set-info :description "R1:can be only single numeric digit")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0216_01 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0216_02 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0216_03 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w0216_04 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0216_05 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0216_06 head tail))))

(check-synth)
