(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/42) — gt=concat(startwith(concat(<C>,<0>)),endwith(repeat(<num>,4)))")
(set-info :description "I need to validate the next pattern: starts with 'C0' and finish with 4 digits exactly")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00371 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00372 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00374 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00311 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00373 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
