(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/123) — gt=and(startwith(or(<let>,<_>)),repeatatleast(or(<alphanum>,<_>),1))")
(set-info :description "An identifier must begin with either an alphabet or underscore (''_''), it can not begin with a digit or any other special character, moreover, digits can come after.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00153 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00378 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00111 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00154 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
