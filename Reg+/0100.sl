(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/104) — gt=repeatatleast(or(<m0>,<m1>),1)")
(set-info :description "lines with only the string '!' or '@' at least once")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00152 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00073 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00335 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00693 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00970 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00394 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01362 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00090 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01334 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01318 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
