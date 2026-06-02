(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/117) — gt=and(contain(or(<?>,<*>)),and(not(contain(repeatatleast(or(<?>,<*>),2))),repeatatleast(<alphanum>,3)))")
(set-info :description "I want a regular expression for a string This string can contain ''*'' and ''?'' in it. But should have at least 3 alphanumeric character in it")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00250 0 (size (Pos w00250)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00249 0 (size (Pos w00249)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00234 0 (size (Pos w00234)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00082 0 (size (Pos w00082))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00248 0 (size (Pos w00248))))))

(check-synth)
