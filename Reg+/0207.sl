(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/7) — gt=concat(concat(repeatatleast(not(contain(or(<=>,<;>))),1),concat(<=>,repeatatleast(not(contain(or(<=>,<;>))),1))),star(concat(<;>,concat(repeatatleast(not(contain(or(<=>,<;>))),1),concat(<=>,repeatatleast(not(contain(or(<=>,<;>))),1))))))")
(set-info :description "R1:Key and value can contain anything except ''='' and '';'' and cannot be blank or empty with spaces")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00707 0 (size (Pos w00707)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00716 0 (size (Pos w00716)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00710 0 (size (Pos w00710))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00717 0 (size (Pos w00717))))))

(check-synth)
