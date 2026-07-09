(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/8) — gt=concat(<low>,contain(or(<cap>,<any>)))")
(set-info :description "lines with lower-case letter , before capital letter or character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00224 0 (size (Pos w00224)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00245 0 (size (Pos w00245)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00759 0 (size (Pos w00759)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00287 0 (size (Pos w00287)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00285 0 (size (Pos w00285)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00284 0 (size (Pos w00284)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01306 0 (size (Pos w01306)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00117 0 (size (Pos w00117))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00101 0 (size (Pos w00101))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00098 0 (size (Pos w00098))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00060 0 (size (Pos w00060))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00881 0 (size (Pos w00881))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
