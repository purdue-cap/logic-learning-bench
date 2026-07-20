(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/38) — gt=concat(<low>,contain(contain(<let>)))")
(set-info :description "lines that have a letter and then a lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00229 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00247 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00254 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00259 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00268 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00274 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00310 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00172 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00169 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00191 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00194 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00199 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00072 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
