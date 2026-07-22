(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/68) — gt=and(not(contain(repeatatleast(< >,2))),concat(<alphanum>,concat(repeatatleast(<alphanum>,1),<alphanum>)))")
(set-info :description "The name must only consist of letters, numbers and one or more single spaces (not in the beginning or end). The minimum length is 3 characters.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00228 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00632 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00581 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00486 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
