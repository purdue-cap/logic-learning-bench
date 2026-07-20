(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/33) — gt=startwith(concat(repeat(<num>,4),< >))")
(set-info :description "Need a regular expression to check a string with 4 digit and the space in trail.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00675 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00682 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00709 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00711 head tail))))

(check-synth)
