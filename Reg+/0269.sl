(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/73) — gt=concat(or(<0>,repeatrange(concat(<num1-9>,<num>),0,2)),star(concat(<,>,repeat(<num>,3))))")
(set-info :description "I would like regex to be a whole number with thousands separated with a comma. No decimal. No ''$''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00006 0 (size (Pos w00006)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00108 0 (size (Pos w00108)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00269 0 (size (Pos w00269)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00341 0 (size (Pos w00341)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00034 0 (size (Pos w00034))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00343 0 (size (Pos w00343))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00193 0 (size (Pos w00193))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00399 0 (size (Pos w00399))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00403 0 (size (Pos w00403))))))

(check-synth)
