(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/1) — gt=repeatatleast(<let>,1)")
(set-info :description "write a regular expression that only matches strings, no numbers, no special character, just letters from A - Z.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00320 0 (size (Pos w00320)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00240 0 (size (Pos w00240)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00321 0 (size (Pos w00321)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00395 0 (size (Pos w00395)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00483 0 (size (Pos w00483))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00239 0 (size (Pos w00239))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00368 0 (size (Pos w00368))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00559 0 (size (Pos w00559))))))

(check-synth)
