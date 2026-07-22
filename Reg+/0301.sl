(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/105) — gt=and(concat(repeatrange(<cap>,1,6),and(repeat(<num>,2),not(contain(concat(<0>,<0>))))),repeatrange(<any>,3,8))")
(set-info :description "First part of the string can be; Min 1 Max 6 characters long. Upper case only. Second part of the string can be; Exactly two characters long but ''00'' is not accepted. So all together: It can be min 3 max 8 characters long")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00473 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00136 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00140 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00151 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00007 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00219 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00309 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00221 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00508 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
