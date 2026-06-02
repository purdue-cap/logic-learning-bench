(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/62) — gt=concat(concat(repeatatleast(<num>,1),concat(<.>,repeatatleast(<num>,1))),star(concat(<;>,concat(repeatatleast(<num>,1),concat(<.>,repeatatleast(<num>,1))))))")
(set-info :description "validate a set of double number with semi-colon delimited")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00646 0 (size (Pos w00646)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00718 0 (size (Pos w00718)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00658 0 (size (Pos w00658))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00719 0 (size (Pos w00719))))))

(check-synth)
