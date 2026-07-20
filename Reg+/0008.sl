(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/8) — gt=concat(<low>,contain(or(<cap>,<any>)))")
(set-info :description "lines with lower-case letter , before capital letter or character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00224 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00245 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00759 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00287 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00285 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00284 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01306 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00117 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00101 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00098 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00060 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00881 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
