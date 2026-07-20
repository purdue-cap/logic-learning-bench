(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/113) — gt=concat(concat(<P>,concat(<a>,concat(<g>,<e>))),concat(concat(< >,concat(repeatatleast(<num>,1),< >)),concat(concat(concat(<o>,<f>),< >),repeatatleast(<num>,1))))")
(set-info :description "R1: one or more digits")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00615 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00582 head tail))))

(check-synth)
