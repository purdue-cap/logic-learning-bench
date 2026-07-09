(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/78) — gt=endwith(concat(<num>,contain(<any>)))")
(set-info :description "lines that end with a number then after has a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00135 0 (size (Pos w00135)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00126 0 (size (Pos w00126)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00507 0 (size (Pos w00507)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00933 0 (size (Pos w00933)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01437 0 (size (Pos w01437)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01134 0 (size (Pos w01134)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01119 0 (size (Pos w01119)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00219 0 (size (Pos w00219))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00012 0 (size (Pos w00012))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00741 0 (size (Pos w00741))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00009 0 (size (Pos w00009))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00102 0 (size (Pos w00102))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00599 0 (size (Pos w00599))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
