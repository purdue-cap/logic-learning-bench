(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/16) — gt=concat(<num1-9>,concat(<@>,concat(repeatrange(<num>,1,3),<%>)))")
(set-info :description "R1:can be only single numeric digit")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)


(check-synth)
