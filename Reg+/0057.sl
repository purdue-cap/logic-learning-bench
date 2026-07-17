(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/57) — gt=concat(repeatatleast(<let>,2),contain(<vow>))")
(set-info :description "lines that contain a letter , 2 times or more before a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00524 0 (size (Pos w00524)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00543 0 (size (Pos w00543)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01550 0 (size (Pos w01550)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01540 0 (size (Pos w01540)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00761 0 (size (Pos w00761)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01532 0 (size (Pos w01532)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01369 0 (size (Pos w01369)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00229 0 (size (Pos w00229))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00267 0 (size (Pos w00267))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00255 0 (size (Pos w00255))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00376 0 (size (Pos w00376))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00321 0 (size (Pos w00321))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00569 0 (size (Pos w00569))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
