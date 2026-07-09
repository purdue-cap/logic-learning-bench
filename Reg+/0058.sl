(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/58) — gt=repeatatleast(startwith(concat(<cap>,contain(<any>))),1)")
(set-info :description "lines starting in capital letter with a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00712 0 (size (Pos w00712)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00715 0 (size (Pos w00715)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01288 0 (size (Pos w01288)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01537 0 (size (Pos w01537)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00210 0 (size (Pos w00210)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00198 0 (size (Pos w00198)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00204 0 (size (Pos w00204)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00034 0 (size (Pos w00034))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00940 0 (size (Pos w00940))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00092 0 (size (Pos w00092))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00094 0 (size (Pos w00094))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01103 0 (size (Pos w01103))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01104 0 (size (Pos w01104))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
