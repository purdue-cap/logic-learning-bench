(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/188) — gt=repeatatleast(or(<vow>,<m0>),7)")
(set-info :description "lines with at least 7 of  the string '!' or a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01146 0 (size (Pos w01146)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01255 0 (size (Pos w01255)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01302 0 (size (Pos w01302)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01199 0 (size (Pos w01199)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01300 0 (size (Pos w01300)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01208 0 (size (Pos w01208)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01278 0 (size (Pos w01278)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00984 0 (size (Pos w00984))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01081 0 (size (Pos w01081))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01041 0 (size (Pos w01041))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
