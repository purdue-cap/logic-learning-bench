(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/24) — gt=concat(repeat(<any>,3),star(concat(<,>,repeat(<any>,3))))")
(set-info :description "I need to validate each sub string length is 3 which is split by comma.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00666 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00673 head tail))))

(check-synth)
