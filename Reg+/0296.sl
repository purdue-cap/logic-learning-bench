(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/100) — gt=concat(concat(or(<S>,<s>),concat(or(<O>,<o>),<->)),repeat(<num>,6))")
(set-info :description "The string must be 9 characters long, starting with 'SO-' (case insensitive eg 'So-', 'so-', 'sO-' and 'SO-') followed by 6 numbers.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00514 0 (size (Pos w00514)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00517 0 (size (Pos w00517)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00523 0 (size (Pos w00523)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00528 0 (size (Pos w00528)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00515 0 (size (Pos w00515))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00551 0 (size (Pos w00551))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00513 0 (size (Pos w00513))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00516 0 (size (Pos w00516))))))

(check-synth)
