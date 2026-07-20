(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/182) — gt=contain(or(concat(<any>,contain(<let>)),<m0>))")
(set-info :description "lines containing a character before a letter or '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00229 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00230 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00215 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00238 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00110 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00405 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00388 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00061 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00219 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
