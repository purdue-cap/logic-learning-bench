(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/68) — gt=and(not(contain(repeatatleast(< >,2))),concat(<alphanum>,concat(repeatatleast(<alphanum>,1),<alphanum>)))")
(set-info :description "The name must only consist of letters, numbers and one or more single spaces (not in the beginning or end). The minimum length is 3 characters.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00228 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00632 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00581 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00486 head tail))))

(check-synth)
