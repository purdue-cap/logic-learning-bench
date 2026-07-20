(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/191) — gt=concat(<any>,contain(or(<let>,<m0>)))")
(set-info :description "lines containing the string '!' or a letter after a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00215 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00229 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00110 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00119 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00120 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00406 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00677 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00039 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00218 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
