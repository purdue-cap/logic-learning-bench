(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/114) — gt=concat(concat(<1>,concat(<5>,concat(<6>,<6>))),optional(concat(<->,repeat(<num>,2))))")
(set-info :description "It will always expect optional 2 numeric number with hyphen (''-'') after ''1566''.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00206 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00424 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00425 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00426 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00287 head tail))))

(check-synth)
