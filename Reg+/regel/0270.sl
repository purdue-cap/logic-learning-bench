(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/74) — gt=and(repeat(<num>,10),startwith(<9>))")
(set-info :description "I'm looking for a regular expression that will match text given the following requirements: contains only 10 digits (only numbers); starts with '9'.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00546 0 (size (Pos w00546)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00544 0 (size (Pos w00544)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00506 0 (size (Pos w00506))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00535 0 (size (Pos w00535))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00543 0 (size (Pos w00543))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00594 0 (size (Pos w00594))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00532 0 (size (Pos w00532))))))

(check-synth)
