(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/78) — gt=repeatatleast(<alphanum>,1)")
(set-info :description "Should allow only alphanumeric with no space and no other characters including '_'. It should not allow leading/trailing whitespace also.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00370 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00369 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00233 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00018 head tail))))

(check-synth)
