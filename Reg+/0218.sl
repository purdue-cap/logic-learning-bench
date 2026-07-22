(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/18) — gt=or(repeat(<num>,7),repeat(<num>,10))")
(set-info :description "accept numeric values that are seven or ten digits")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00407 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00420 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00532 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00534 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00353 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00465 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00501 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
