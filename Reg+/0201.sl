(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/1) — gt=repeatatleast(<let>,1)")
(set-info :description "write a regular expression that only matches strings, no numbers, no special character, just letters from A - Z.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00320 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00240 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00321 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00395 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00483 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00239 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00368 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00559 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
