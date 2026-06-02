(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/201) — gt=concat(repeatatleast(<let>,5),contain(<any>))")
(set-info :description "lines with 5 letters before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01077 0 (size (Pos w01077)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01078 0 (size (Pos w01078)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01079 0 (size (Pos w01079)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01080 0 (size (Pos w01080)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01076 0 (size (Pos w01076)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01032 0 (size (Pos w01032)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01047 0 (size (Pos w01047)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00741 0 (size (Pos w00741))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00934 0 (size (Pos w00934))))))

(check-synth)
