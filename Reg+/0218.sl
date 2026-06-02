(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/18) — gt=or(repeat(<num>,7),repeat(<num>,10))")
(set-info :description "accept numeric values that are seven or ten digits")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00407 0 (size (Pos w00407)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00420 0 (size (Pos w00420)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00532 0 (size (Pos w00532)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00534 0 (size (Pos w00534)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00353 0 (size (Pos w00353))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00465 0 (size (Pos w00465))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00501 0 (size (Pos w00501))))))

(check-synth)
