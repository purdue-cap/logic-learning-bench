(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/86) — gt=concat(<low>,contain(and(<vow>,<any>)))")
(set-info :description "lines with a lower-case letter before vowel and character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00524 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00514 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00513 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00760 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00794 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00581 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00797 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00172 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00450 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00186 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00206 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00207 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00213 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
