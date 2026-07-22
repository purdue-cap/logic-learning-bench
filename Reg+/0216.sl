(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/16) — gt=concat(<num1-9>,concat(<@>,concat(repeatrange(<num>,1,3),<%>)))")
(set-info :description "R1:can be only single numeric digit")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (with-model w0216_01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0216_02 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0216_03 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w0216_04 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0216_05 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0216_06 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
