(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/12) — gt=concat(star(<num>),concat(<X>,optional(concat(<^>,repeatatleast(<num>,1)))))")
(set-info :description "optional number of digits followed by an 'X' and an optional ('^' followed by one or more digits)")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00050 0 (size (Pos w00050)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00017 0 (size (Pos w00017)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00299 0 (size (Pos w00299)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00293 0 (size (Pos w00293)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00358 0 (size (Pos w00358)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00069 0 (size (Pos w00069))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00010 0 (size (Pos w00010))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00388 0 (size (Pos w00388))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00126 0 (size (Pos w00126))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00216 0 (size (Pos w00216))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00022 0 (size (Pos w00022))))))

(check-synth)
