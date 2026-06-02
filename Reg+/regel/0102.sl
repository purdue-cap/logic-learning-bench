(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/106) — gt=contain(concat(<vow>,contain(<any>)))")
(set-info :description "the lines that have a vowel coming before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00226 0 (size (Pos w00226)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00486 0 (size (Pos w00486)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01299 0 (size (Pos w01299)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01412 0 (size (Pos w01412)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01145 0 (size (Pos w01145)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01218 0 (size (Pos w01218)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01168 0 (size (Pos w01168)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00373 0 (size (Pos w00373))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00454 0 (size (Pos w00454))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00768 0 (size (Pos w00768))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00608 0 (size (Pos w00608))))))

(check-synth)
