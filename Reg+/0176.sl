(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/183) — gt=concat(<cap>,contain(or(or(<m0>,<num>),<m1>)))")
(set-info :description "lines with a capital letter either the string '!' , a number , or the string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00162 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00179 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00190 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00442 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00460 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01036 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00436 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00230 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00172 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
