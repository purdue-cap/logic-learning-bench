(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/74) — gt=not(startwith(or(<m0>,<num>)))")
(set-info :description "lines which are not starting with the string '!' or a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00699 0 (size (Pos w00699)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00956 0 (size (Pos w00956)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01180 0 (size (Pos w01180)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00722 0 (size (Pos w00722)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01142 0 (size (Pos w01142)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01053 0 (size (Pos w01053)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01018 0 (size (Pos w01018))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01271 0 (size (Pos w01271))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01173 0 (size (Pos w01173))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01150 0 (size (Pos w01150))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00012 0 (size (Pos w00012))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00016 0 (size (Pos w00016))))))

(check-synth)
