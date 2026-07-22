(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/117) — gt=and(contain(or(<?>,<*>)),and(not(contain(repeatatleast(or(<?>,<*>),2))),repeatatleast(<alphanum>,3)))")
(set-info :description "I want a regular expression for a string This string can contain ''*'' and ''?'' in it. But should have at least 3 alphanumeric character in it")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00250 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00249 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00234 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00082 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00248 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
