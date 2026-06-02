(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/93) — gt=concat(or(<num1-9>,concat(<1>,<0>)),optional(concat(<+>,or(<num1-9>,concat(<1>,<0>)))))")
(set-info :description "R1: whole number from ''1'' - ''10''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00010 0 (size (Pos w00010)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00127 0 (size (Pos w00127)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00006 0 (size (Pos w00006))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00093 0 (size (Pos w00093))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00179 0 (size (Pos w00179))))))

(check-synth)
