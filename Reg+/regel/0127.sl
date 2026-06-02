(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/133) — gt=contain(concat(<cap>,contain(<low>)))")
(set-info :description "lines with a capital letter and a lower-case letter following it")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00174 0 (size (Pos w00174)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00926 0 (size (Pos w00926)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01190 0 (size (Pos w01190)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00756 0 (size (Pos w00756)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01262 0 (size (Pos w01262)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01323 0 (size (Pos w01323)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01045 0 (size (Pos w01045)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00055 0 (size (Pos w00055))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00809 0 (size (Pos w00809))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01244 0 (size (Pos w01244))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00924 0 (size (Pos w00924))))))

(check-synth)
