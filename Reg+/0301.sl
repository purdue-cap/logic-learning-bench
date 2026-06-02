(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/105) — gt=and(concat(repeatrange(<cap>,1,6),and(repeat(<num>,2),not(contain(concat(<0>,<0>))))),repeatrange(<any>,3,8))")
(set-info :description "First part of the string can be; Min 1 Max 6 characters long. Upper case only. Second part of the string can be; Exactly two characters long but ''00'' is not accepted. So all together: It can be min 3 max 8 characters long")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00473 0 (size (Pos w00473)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00136 0 (size (Pos w00136)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00140 0 (size (Pos w00140)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00151 0 (size (Pos w00151))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00007 0 (size (Pos w00007))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00219 0 (size (Pos w00219))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00309 0 (size (Pos w00309))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00221 0 (size (Pos w00221))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00508 0 (size (Pos w00508))))))

(check-synth)
