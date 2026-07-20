(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/42) — gt=concat(startwith(concat(<C>,<0>)),endwith(repeat(<num>,4)))")
(set-info :description "I need to validate the next pattern: starts with 'C0' and finish with 4 digits exactly")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00371 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00372 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00374 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00311 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00373 head tail))))

(check-synth)
