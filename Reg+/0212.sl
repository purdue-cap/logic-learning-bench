(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/12) — gt=concat(star(<num>),concat(<X>,optional(concat(<^>,repeatatleast(<num>,1)))))")
(set-info :description "optional number of digits followed by an 'X' and an optional ('^' followed by one or more digits)")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00050 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00017 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00299 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00293 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00358 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00069 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00010 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00388 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00126 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00216 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00022 head tail))))

(check-synth)
