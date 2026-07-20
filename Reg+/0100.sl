(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/104) — gt=repeatatleast(or(<m0>,<m1>),1)")
(set-info :description "lines with only the string '!' or '@' at least once")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00003 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00019 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00065 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00152 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00073 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00335 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00693 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00970 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01362 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00090 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01334 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01318 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
