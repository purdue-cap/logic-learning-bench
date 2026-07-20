(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/28) — gt=concat(<A>,concat(<B>,concat(or(<1>,or(<2>,or(<3>,or(<4>,or(<5>,<6>))))),concat(<_>,concat(<num>,concat(<_>,concat(optional(<num1-9>),concat(<.>,concat(<e>,concat(<x>,<e>))))))))))")
(set-info :description "R1: compulsory, it is a natural number")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00629 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00650 head tail))))

(check-synth)
