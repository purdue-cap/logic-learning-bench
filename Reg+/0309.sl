(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/113) — gt=concat(concat(<P>,concat(<a>,concat(<g>,<e>))),concat(concat(< >,concat(repeatatleast(<num>,1),< >)),concat(concat(concat(<o>,<f>),< >),repeatatleast(<num>,1))))")
(set-info :description "R1: one or more digits")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00615 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00582 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
