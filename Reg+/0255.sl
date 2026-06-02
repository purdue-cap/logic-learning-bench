(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/58) — gt=not(contain(< >))")
(set-info :description "it doesn't start with a space, doesn't contain a space, and doesn't end with a space.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00314 0 (size (Pos w00314)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00016 0 (size (Pos w00016)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00375 0 (size (Pos w00375))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00327 0 (size (Pos w00327))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00376 0 (size (Pos w00376))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))

(check-synth)
