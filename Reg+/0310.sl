(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/114) — gt=concat(concat(<1>,concat(<5>,concat(<6>,<6>))),optional(concat(<->,repeat(<num>,2))))")
(set-info :description "It will always expect optional 2 numeric number with hyphen (''-'') after ''1566''.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00206 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00424 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00425 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00426 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00287 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
