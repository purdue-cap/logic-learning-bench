(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/50) — gt=concat(star(not(<->)),concat(optional(<->),star(not(<->))))")
(set-info :description "Requirement is that total number of '-' with the string can only be one")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00230 0 (size (Pos w00230)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00552 0 (size (Pos w00552)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00315 0 (size (Pos w00315)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00255 0 (size (Pos w00255)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00586 0 (size (Pos w00586))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00333 0 (size (Pos w00333))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00619 0 (size (Pos w00619))))))

(check-synth)
