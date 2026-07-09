(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/104) — gt=repeatatleast(or(<m0>,<m1>),1)")
(set-info :description "lines with only the string '!' or '@' at least once")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00152 0 (size (Pos w00152)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00073 0 (size (Pos w00073)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00335 0 (size (Pos w00335)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00693 0 (size (Pos w00693)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00970 0 (size (Pos w00970))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01362 0 (size (Pos w01362))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00090 0 (size (Pos w00090))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01334 0 (size (Pos w01334))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01318 0 (size (Pos w01318))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
