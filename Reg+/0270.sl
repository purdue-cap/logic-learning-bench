(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/74) — gt=and(repeat(<num>,10),startwith(<9>))")
(set-info :description "I'm looking for a regular expression that will match text given the following requirements: contains only 10 digits (only numbers); starts with '9'.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00546 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00544 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00506 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00535 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00543 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00594 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00532 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
