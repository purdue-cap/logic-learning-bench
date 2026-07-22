(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/78) — gt=repeatatleast(<alphanum>,1)")
(set-info :description "Should allow only alphanumeric with no space and no other characters including '_'. It should not allow leading/trailing whitespace also.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00370 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00369 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00233 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00018 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
