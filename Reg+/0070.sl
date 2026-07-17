(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/70) — gt=repeatatleast(startwith(concat(<m0>,contain(<vow>))),1)")
(set-info :description "lines starting with string '!' followed by vowel at least once")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00081 0 (size (Pos w00081)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00084 0 (size (Pos w00084)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00085 0 (size (Pos w00085)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00089 0 (size (Pos w00089)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01463 0 (size (Pos w01463)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01527 0 (size (Pos w01527)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00621 0 (size (Pos w00621))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01157 0 (size (Pos w01157))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01333 0 (size (Pos w01333))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01312 0 (size (Pos w01312))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
