(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/119) — gt=concat(repeat(<num>,6),concat(<.>,repeat(<num>,3)))")
(set-info :description "I want to match a certain set of string, such as: Strings composed of exactly 6 digits, a decimal, followed by exactly 3 more digits'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00540 0 (size (Pos w00540)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00631 0 (size (Pos w00631))))))

(check-synth)
