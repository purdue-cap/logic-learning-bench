(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/117) — gt=and(contain(or(<?>,<*>)),and(not(contain(repeatatleast(or(<?>,<*>),2))),repeatatleast(<alphanum>,3)))")
(set-info :description "I want a regular expression for a string This string can contain ''*'' and ''?'' in it. But should have at least 3 alphanumeric character in it")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00250 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00249 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00234 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00082 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00248 head tail))))

(check-synth)
