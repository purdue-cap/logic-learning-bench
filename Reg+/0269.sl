(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/73) — gt=concat(or(<0>,repeatrange(concat(<num1-9>,<num>),0,2)),star(concat(<,>,repeat(<num>,3))))")
(set-info :description "I would like regex to be a whole number with thousands separated with a comma. No decimal. No ''$''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00006 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00108 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00269 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00341 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00034 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00343 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00193 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00399 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00403 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
