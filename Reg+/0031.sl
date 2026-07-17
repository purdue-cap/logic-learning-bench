(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/31) — gt=repeatatleast(or(<num>,<vow>),6)")
(set-info :description "lines with at least 6 numbers or vowels")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01000 0 (size (Pos w01000)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01160 0 (size (Pos w01160)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01074 0 (size (Pos w01074)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01199 0 (size (Pos w01199)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01067 0 (size (Pos w01067)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01196 0 (size (Pos w01196)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01162 0 (size (Pos w01162)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00010 0 (size (Pos w00010))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00106 0 (size (Pos w00106))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00385 0 (size (Pos w00385))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00524 0 (size (Pos w00524))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
