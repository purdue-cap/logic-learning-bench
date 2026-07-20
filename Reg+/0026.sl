(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/26) — gt=concat(<cap>,contain(<num>))")
(set-info :description "lines containing a capital letter followed by a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00165 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00438 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00166 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00440 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01030 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01031 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00901 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00010 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00217 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00521 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00739 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01070 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
