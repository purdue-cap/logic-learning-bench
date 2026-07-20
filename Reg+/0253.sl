(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/56) — gt=concat(concat(<cap>,star(<let>)),star(concat(< >,concat(<cap>,star(<let>)))))")
(set-info :description "the first letter of each string is in upper case")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00663 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00664 head tail))))

(check-synth)
