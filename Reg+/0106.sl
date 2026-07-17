(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/110) — gt=concat(<any>,contain(<m0>))")
(set-info :description "lines with a character followed by '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00215 0 (size (Pos w00215)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00485 0 (size (Pos w00485)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01163 0 (size (Pos w01163)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01350 0 (size (Pos w01350)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01391 0 (size (Pos w01391)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01235 0 (size (Pos w01235)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01516 0 (size (Pos w01516)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01238 0 (size (Pos w01238))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00983 0 (size (Pos w00983))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00212 0 (size (Pos w00212))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01143 0 (size (Pos w01143))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
