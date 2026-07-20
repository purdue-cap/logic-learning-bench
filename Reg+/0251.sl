(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/53) — gt=concat(<%>,startwith(repeat(<let>,2)))")
(set-info :description "User allowed to enter two characters after '%'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00081 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00156 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00329 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00402 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00452 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00023 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00077 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00080 head tail))))

(check-synth)
