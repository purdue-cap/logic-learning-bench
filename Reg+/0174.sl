(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/181) — gt=concat(repeatatleast(<let>,5),contain(<m0>))")
(set-info :description "lines with 5 or more of a letter before string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01076 0 (size (Pos w01076)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01205 0 (size (Pos w01205)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01204 0 (size (Pos w01204)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01201 0 (size (Pos w01201)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01206 0 (size (Pos w01206)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01438 0 (size (Pos w01438)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01460 0 (size (Pos w01460)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00939 0 (size (Pos w00939))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01400 0 (size (Pos w01400))))))

(check-synth)
