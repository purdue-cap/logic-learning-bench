(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/100) — gt=concat(concat(or(<S>,<s>),concat(or(<O>,<o>),<->)),repeat(<num>,6))")
(set-info :description "The string must be 9 characters long, starting with 'SO-' (case insensitive eg 'So-', 'so-', 'sO-' and 'SO-') followed by 6 numbers.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00514 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00517 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00523 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00528 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00515 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00551 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00513 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00516 head tail))))

(check-synth)
