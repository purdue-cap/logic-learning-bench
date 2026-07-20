(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/197) — gt=repeatatleast(startwith(or(<m0>,<let>)),4)")
(set-info :description "lines starting in 4 or more of the string '!' or letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00609 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00741 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00762 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00825 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00950 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01148 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01202 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00317 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00530 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
