(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/59) — gt=endwith(or(<m0>,<num>))")
(set-info :description "lines that end with '!' or have just have a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01211 0 (size (Pos w01211)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01346 0 (size (Pos w01346)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01390 0 (size (Pos w01390)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01341 0 (size (Pos w01341)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01270 0 (size (Pos w01270)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00555 0 (size (Pos w00555))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00679 0 (size (Pos w00679))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01099 0 (size (Pos w01099))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01339 0 (size (Pos w01339))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00022 0 (size (Pos w00022))))))

(check-synth)
