(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/94) — gt=startwith(or(<num>,<let>))")
(set-info :description "lines starting in words with a number or letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w01135 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00143 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00395 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00748 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00425 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00417 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00661 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00008 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00004 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00005 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
