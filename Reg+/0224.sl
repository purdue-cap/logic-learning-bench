(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/24) — gt=concat(repeat(<any>,3),star(concat(<,>,repeat(<any>,3))))")
(set-info :description "I need to validate each sub string length is 3 which is split by comma.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00666 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00673 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
