(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/18) — gt=or(repeat(<num>,7),repeat(<num>,10))")
(set-info :description "accept numeric values that are seven or ten digits")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00407 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00420 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00532 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00534 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00353 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00465 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00501 head tail))))

(check-synth)
