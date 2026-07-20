(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/50) — gt=concat(star(not(<->)),concat(optional(<->),star(not(<->))))")
(set-info :description "Requirement is that total number of '-' with the string can only be one")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00230 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00552 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00315 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00255 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00586 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00333 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00619 head tail))))

(check-synth)
