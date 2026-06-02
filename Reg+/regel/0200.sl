(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/208) — gt=repeatatleast(or(<vow>,<any>),6)")
(set-info :description "lines with vowel or character , 6 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01074 0 (size (Pos w01074)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01081 0 (size (Pos w01081)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01042 0 (size (Pos w01042)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01004 0 (size (Pos w01004)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01080 0 (size (Pos w01080)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01075 0 (size (Pos w01075)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01358 0 (size (Pos w01358)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 0 (size (Pos w00115))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00667 0 (size (Pos w00667))))))

(check-synth)
