(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/8) — gt=concat(<low>,contain(or(<cap>,<any>)))")
(set-info :description "lines with lower-case letter , before capital letter or character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00224 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00245 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00759 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00287 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00285 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00284 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01306 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00117 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00101 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00098 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00060 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00881 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
