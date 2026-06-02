(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/42) — gt=concat(startwith(concat(<C>,<0>)),endwith(repeat(<num>,4)))")
(set-info :description "I need to validate the next pattern: starts with 'C0' and finish with 4 digits exactly")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00371 0 (size (Pos w00371)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00372 0 (size (Pos w00372)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00374 0 (size (Pos w00374))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00311 0 (size (Pos w00311))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00373 0 (size (Pos w00373))))))

(check-synth)
