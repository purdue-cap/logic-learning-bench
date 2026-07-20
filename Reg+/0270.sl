(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/74) — gt=and(repeat(<num>,10),startwith(<9>))")
(set-info :description "I'm looking for a regular expression that will match text given the following requirements: contains only 10 digits (only numbers); starts with '9'.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00546 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00544 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00506 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00535 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00543 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00594 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00532 head tail))))

(check-synth)
