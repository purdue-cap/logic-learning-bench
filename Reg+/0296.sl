(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/100) — gt=concat(concat(or(<S>,<s>),concat(or(<O>,<o>),<->)),repeat(<num>,6))")
(set-info :description "The string must be 9 characters long, starting with 'SO-' (case insensitive eg 'So-', 'so-', 'sO-' and 'SO-') followed by 6 numbers.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00514 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00517 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00523 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00528 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00515 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00551 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00513 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00516 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
