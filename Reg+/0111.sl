(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/116) — gt=contain(or(or(<low>,<let>),<any>))")
(set-info :description "lines containing either lower-case letter , a letter , or character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00046 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00028 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01233 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01057 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00134 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00347 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00090 head tail)))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
