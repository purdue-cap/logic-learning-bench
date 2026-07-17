(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/72) — gt=repeatatleast(concat(<low>,contain(<vow>)),1)")
(set-info :description "lines with a lower-case letter followed by a vowel at least once in them")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00253 0 (size (Pos w00253)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00550 0 (size (Pos w00550)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00763 0 (size (Pos w00763)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00979 0 (size (Pos w00979)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01366 0 (size (Pos w01366)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01227 0 (size (Pos w01227)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01226 0 (size (Pos w01226)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01096 0 (size (Pos w01096))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01310 0 (size (Pos w01310))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00041 0 (size (Pos w00041))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01421 0 (size (Pos w01421))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01091 0 (size (Pos w01091))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01169 0 (size (Pos w01169))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
