(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/33) — gt=startwith(concat(repeat(<num>,4),< >))")
(set-info :description "Need a regular expression to check a string with 4 digit and the space in trail.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00675 0 (size (Pos w00675)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00682 0 (size (Pos w00682)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00709 0 (size (Pos w00709))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00711 0 (size (Pos w00711))))))

(check-synth)
