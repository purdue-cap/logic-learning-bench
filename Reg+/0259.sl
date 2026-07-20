(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/62) — gt=concat(concat(repeatatleast(<num>,1),concat(<.>,repeatatleast(<num>,1))),star(concat(<;>,concat(repeatatleast(<num>,1),concat(<.>,repeatatleast(<num>,1))))))")
(set-info :description "validate a set of double number with semi-colon delimited")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00646 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00718 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00658 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00719 head tail))))

(check-synth)
