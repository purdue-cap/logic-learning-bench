(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/93) — gt=concat(or(<num1-9>,concat(<1>,<0>)),optional(concat(<+>,or(<num1-9>,concat(<1>,<0>)))))")
(set-info :description "R1: whole number from ''1'' - ''10''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00010 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00127 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00006 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00093 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00179 head tail))))

(check-synth)
