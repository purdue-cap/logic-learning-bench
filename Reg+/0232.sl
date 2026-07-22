(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/33) — gt=startwith(concat(repeat(<num>,4),< >))")
(set-info :description "Need a regular expression to check a string with 4 digit and the space in trail.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00675 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00682 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00709 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00711 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
