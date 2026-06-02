(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/114) — gt=concat(concat(<1>,concat(<5>,concat(<6>,<6>))),optional(concat(<->,repeat(<num>,2))))")
(set-info :description "It will always expect optional 2 numeric number with hyphen (''-'') after ''1566''.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00206 0 (size (Pos w00206)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00424 0 (size (Pos w00424)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00425 0 (size (Pos w00425)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00426 0 (size (Pos w00426))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00287 0 (size (Pos w00287))))))

(check-synth)
