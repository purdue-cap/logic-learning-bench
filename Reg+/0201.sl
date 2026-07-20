(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/1) — gt=repeatatleast(<let>,1)")
(set-info :description "write a regular expression that only matches strings, no numbers, no special character, just letters from A - Z.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00320 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00240 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00321 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00395 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00483 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00239 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00368 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00559 head tail))))

(check-synth)
