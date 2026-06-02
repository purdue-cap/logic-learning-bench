(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/207) — gt=concat(repeatatleast(<cap>,5),contain(<vow>))")
(set-info :description "lines with a capital letter , 5 or more times before a vowel in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01034 0 (size (Pos w01034)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01048 0 (size (Pos w01048)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01178 0 (size (Pos w01178)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01281 0 (size (Pos w01281)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01276 0 (size (Pos w01276)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01038 0 (size (Pos w01038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01277 0 (size (Pos w01277)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00169 0 (size (Pos w00169))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00441 0 (size (Pos w00441))))))

(check-synth)
