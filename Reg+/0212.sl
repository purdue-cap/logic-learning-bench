(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/12) — gt=concat(star(<num>),concat(<X>,optional(concat(<^>,repeatatleast(<num>,1)))))")
(set-info :description "optional number of digits followed by an 'X' and an optional ('^' followed by one or more digits)")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00050 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00017 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00299 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00293 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00358 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00069 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00010 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00388 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00126 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00216 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00022 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
