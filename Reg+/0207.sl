(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/7) — gt=concat(concat(repeatatleast(not(contain(or(<=>,<;>))),1),concat(<=>,repeatatleast(not(contain(or(<=>,<;>))),1))),star(concat(<;>,concat(repeatatleast(not(contain(or(<=>,<;>))),1),concat(<=>,repeatatleast(not(contain(or(<=>,<;>))),1))))))")
(set-info :description "R1:Key and value can contain anything except ''='' and '';'' and cannot be blank or empty with spaces")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00707 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00716 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00710 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00717 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
