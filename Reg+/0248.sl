(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/50) — gt=concat(star(not(<->)),concat(optional(<->),star(not(<->))))")
(set-info :description "Requirement is that total number of '-' with the string can only be one")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00552 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00315 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00255 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00586 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00333 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00619 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
