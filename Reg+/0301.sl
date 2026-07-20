(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/105) — gt=and(concat(repeatrange(<cap>,1,6),and(repeat(<num>,2),not(contain(concat(<0>,<0>))))),repeatrange(<any>,3,8))")
(set-info :description "First part of the string can be; Min 1 Max 6 characters long. Upper case only. Second part of the string can be; Exactly two characters long but ''00'' is not accepted. So all together: It can be min 3 max 8 characters long")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00473 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00136 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00140 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00151 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00007 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00219 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00309 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00221 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00508 head tail))))

(check-synth)
