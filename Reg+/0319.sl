(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/123) — gt=and(startwith(or(<let>,<_>)),repeatatleast(or(<alphanum>,<_>),1))")
(set-info :description "An identifier must begin with either an alphabet or underscore (''_''), it can not begin with a digit or any other special character, moreover, digits can come after.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00153 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00378 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00111 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00154 head tail))))

(check-synth)
