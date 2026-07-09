(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/67) — gt=repeatatleast(concat(<m0>,contain(<any>)),4)")
(set-info :description "lines with string '!' followed by a character , 4 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01259 0 (size (Pos w01259)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01536 0 (size (Pos w01536)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01548 0 (size (Pos w01548)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01417 0 (size (Pos w01417)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01515 0 (size (Pos w01515)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01523 0 (size (Pos w01523)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01522 0 (size (Pos w01522)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00082 0 (size (Pos w00082))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01382 0 (size (Pos w01382))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01365 0 (size (Pos w01365))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01418 0 (size (Pos w01418))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01153 0 (size (Pos w01153))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
