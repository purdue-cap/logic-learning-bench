(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/77) — gt=endwith(or(<m0>,<m1>))")
(set-info :description "lines with words ending in string '!' or '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00811 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00812 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01490 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01491 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00335 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00431 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00003 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01492 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00639 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00697 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01541 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01441 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00631 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
