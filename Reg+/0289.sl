(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/93) — gt=concat(or(<num1-9>,concat(<1>,<0>)),optional(concat(<+>,or(<num1-9>,concat(<1>,<0>)))))")
(set-info :description "R1: whole number from ''1'' - ''10''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00010 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00127 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00006 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00093 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00179 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
