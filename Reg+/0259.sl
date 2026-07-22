(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/62) — gt=concat(concat(repeatatleast(<num>,1),concat(<.>,repeatatleast(<num>,1))),star(concat(<;>,concat(repeatatleast(<num>,1),concat(<.>,repeatatleast(<num>,1))))))")
(set-info :description "validate a set of double number with semi-colon delimited")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00646 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00718 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00658 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00719 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
