(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/206) — gt=concat(repeatatleast(contain(<m0>),4),contain(<num>))")
(set-info :description "lines containing 4 or more of the string '!' before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00826 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01148 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00985 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01066 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01161 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01002 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01147 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00610 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
